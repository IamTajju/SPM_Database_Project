from django.contrib.auth import authenticate, login, logout
from django.forms.widgets import Select
from django.http.response import HttpResponse
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.urls import reverse
from .decorators import allowedUsers, authenticated, unauthenticated
from .facultyqueries import *
from .achievements import *
from .graphqueries import *
from .dashboardqueries import *
from django import forms
from json import dumps
# Create your views here.

# CellIDs as global variable
cellIDs = []
buttonIDs = []


@allowedUsers(allowedRoles=['Faculty'])
def facultyIndex(request):
    facultyname = request.user.get_full_name()
    facultyid = request.user.username
    currentSemDeets = getCurrentSemesterCourseDetails(facultyid)
    assessments = getCurrentAssessments(facultyid)

    #--------------Following code just to build form--------------------------#
    assessmentChoices = (("Q", "Quiz"), ("M", "Midterm"),
                         ("F", "Finalterm"), ("P", "Project"))
    bufferCurrentSemDeets = getCurrentSemesterID(facultyid)
    sectionChoices = []
    for deets in bufferCurrentSemDeets:
        buffer = []
        buffer.append(deets[3])
        buffer.append(deets[0]+" Section: "+str(deets[1]))
        sectionChoices.append(tuple(buffer))

    sectionChoices = tuple(sectionChoices)

    class NewAssessmentForm(forms.Form):
        section = forms.ChoiceField(
            choices=sectionChoices, label="Select Section")
        assessmentType = forms.ChoiceField(
            choices=assessmentChoices, label="Select Assessment Type")
        assessmentWeight = forms.DecimalField(label="Assessment Weightage")
    #----------------------- End of Form building --------------------------#

    if request.method == "GET":
        # To clear for marksheet JS array.
        cellIDs.clear()
        buttonIDs.clear()
        #--------------------------------#
        return render(request, "SPM/facultyIndex.html", {
            "name": facultyname,
            "currentSemDeets": currentSemDeets,
            "form": NewAssessmentForm,
            "assessments": assessments,
            "dict": isAssessmentFilled(assessments)
        }
        )

    if request.method == "POST":
        form = NewAssessmentForm(request.POST)
        if form.is_valid():
            sectionID = form.cleaned_data["section"]
            assessmentType = form.cleaned_data["assessmentType"]
            assessmentWeightage = form.cleaned_data["assessmentWeight"]
            message = "Assessment Created Successfully!"

            # To pass data into Next view
            request.session["assessmentID"] = createAssessment(str(sectionID), assessmentType,
                                                               assessmentWeightage)
            # To pass data into Next view
            request.session["courseID"] = getCourse(str(sectionID))

        else:
            message = "Invalid input, Assessment not created."

        # For table update in real time.
        assessments = getCurrentAssessments(facultyid)

        return render(request, "SPM/facultyIndex.html", {
            "name": facultyname,
            "currentSemDeets": currentSemDeets,
            "form": NewAssessmentForm,
            "message": message,
            "assessments": assessments,
            "dict": isAssessmentFilled(assessments)
        })


@allowedUsers(allowedRoles=['Faculty'])
def mapQuestions(request):

    # Get Course Outcomes for current course
    coChoices = []
    cursorReturn = getCOs(request.session["courseID"])

    for CO in cursorReturn:
        buffer = []
        buffer.append(CO[0])
        bufstr = ""
        for i in range(len(CO[0])):
            if i < len(CO[0]) and i >= len(CO[0])-3:
                bufstr = bufstr + CO[0][i]
        buffer.append(bufstr)
        coChoices.append(tuple(buffer))

    coChoices = tuple(coChoices)

    class NewQuestion(forms.Form):
        qNo = forms.IntegerField(label="Question Number")
        marksAttainable = forms.IntegerField(label="Enter Total Marks")
        coID = forms.ChoiceField(
            choices=coChoices, label="Select Course Outcome")

    message = ""
    if request.method == "POST":
        form = NewQuestion(request.POST)

        if form.is_valid():
            qNo = form.cleaned_data["qNo"]
            marks = form.cleaned_data["marksAttainable"]
            coID = form.cleaned_data["coID"]

            createQuestion(qNo, request.session["assessmentID"], coID, marks)
            message = "Question added successfully! Please enter new question"

        else:
            message = "Invalid input please try again"

    return render(request, "SPM/mapQuestions.html", {
        "form2": NewQuestion,
        "courseID": request.session["courseID"],
        "assessmentID": request.session["assessmentID"],
        "message": message
    })


@ unauthenticated
def login_view(request):

    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return HttpResponseRedirect(reverse("homepage"))

        else:
            return render(request, "SPM/login.html", {
                "message": "Invalid credentials"
            }
            )
    else:
        return render(request, "SPM/login.html")


def logout_view(request):

    logout(request)
    return render(request, "SPM/login.html", {
        "message": "Logged Out."
    }
    )


@authenticated
def homepage(request):
    if request.user.groups.exists():
        group = request.user.groups.all()[0].name

        if group == 'Faculty':
            return facultyIndex(request)

        if group == 'Higher Management':
            # Evaluation functions
            truncateTable()
            populateCOEvaluation()
            populatePLOEvaluation()
            return dashboard(request)


@allowedUsers(allowedRoles=['Faculty'])
def insertMarks(request, assessmentID):

    # One tuple (courseID, sectionNo, type, weight)
    assessmentInfo = getAssessmentInfo(assessmentID)

    # ListOfTuples [(studentID, courseEnrollmentID)]
    courseEnrollmentIDs = getStudentAndCourseEnrIDs(assessmentID)

    #ListOfTuples [(questionID, questionNo, marksAttainable)]
    questions = getQuestionInfo(assessmentID)

    if request.method == "POST":
        # Getting questionID and ceID
        keys = request.POST.keys()
        keys = list(keys)

        # Getting marks
        marks = request.POST[keys[1]]

        # Splitting IDs
        IDs = keys[1].split(",")
        questionID = IDs[0]
        ceID = IDs[1]

        # Updating marks to spm db
        entryQuestionMark(assessmentID, questionID, ceID, marks)

    #--------------------For front-end interactions--------------#
        # forming buttonID
        buttonID = ""
        buttonID = buttonID+ceID+","+questionID

        # Appending CellIDs and ButtonIDs
        cellIDs.append(str(keys[1]))
        buttonIDs.append(str(buttonID))

        # Converting to JSON
        data1 = dumps(cellIDs)
        data2 = dumps(buttonIDs)
    #-------------------------------------------------------------#
        return render(request, "SPM/marksheet.html", {
            "assessmentID": assessmentID,
            "assessmentInfo": assessmentInfo,
            "courseEnrollmentIDs": courseEnrollmentIDs,
            "questions": questions,
            "cellIDs": data1,
            "buttonIDs": data2,
        })

    if request.method == "GET":
        return render(request, "SPM/marksheet.html", {
            "assessmentID": assessmentID,
            "assessmentInfo": assessmentInfo,
            "courseEnrollmentIDs": courseEnrollmentIDs,
            "questions": questions
        })


@allowedUsers(allowedRoles=['Faculty'])
def SemStats(request):
    # Evaluation functions
    truncateTable()
    populateCOEvaluation()
    populatePLOEvaluation()

    # Faculty name and id
    facultyname = request.user.get_full_name()
    facultyid = request.user.username

    #[("courseID", "sectionNo", "totalStudents", "sectionID")]
    CurrentSemesterIDs = getCurrentSemesterID(facultyid)
    selectedCourseID = CurrentSemesterIDs[0][0]
    # Making form and list for select
    choices = []
    prev = []
    for id in CurrentSemesterIDs:
        if id[0] == prev:
            continue
        buffer = []
        buffer.append(id[0])
        bufstr = ""
        for i in range(len(id[0])):
            if i < len(id[0]) and i >= len(id[0])-6:
                bufstr = bufstr + id[0][i]

        buffer.append(bufstr)
        choices.append(tuple(buffer))
        prev = id[0]

    choices = tuple(choices)

    class CoursesList(forms.Form):
        courseIDs = forms.ChoiceField(
            choices=choices, label="")

    form = CoursesList

    if request.method == "POST":
        form = CoursesList(request.POST)
        if form.is_valid():
            selectedCourseID = form.cleaned_data["courseIDs"]

    # Showing evaluation for the selected course
    coIDs = getCOs(selectedCourseID)

    # Getting all PLOs mapped to the COs for the selected course
    ploIDs = []
    for coID in coIDs:
        ploID = getPLOID(coID[0])
        ploIDs.append(ploID)

    # For semester progress
    sectionProgress = 0.0
    check = True
    # Finding all sections for selected course
    sectionIDs = []
    for id in CurrentSemesterIDs:
        if id[0] == selectedCourseID:
            sectionIDs.append(id[3])

            # For semester progress
            if check:
                sectionProgress = float(getCurrentSemProgress(id[3]))
                check = False

    AllSectionsCOEvaluations = []
    AllSectionsPLOEvaluations = []
    for sectionID in sectionIDs:
        # List for each sections each CO achievement rate [co1Rate, co2Rate, co3Rate]
        sectionWiseCOEvaluations = []
        for coID in coIDs:
            coEvaluationRate = getCOEvaluationRate(sectionID, coID[0])
            sectionWiseCOEvaluations.append(coEvaluationRate)

        # List for each sections each PLO achievement rate [plo1Rate, plo2Rate, plo3Rate]
        sectionWisePLOEvaluations = []
        for ploID in ploIDs:
            ploEvaluationRate = getPLOEvaluationRate(sectionID, ploID)
            sectionWisePLOEvaluations.append(ploEvaluationRate)

        # List of lists for each sections CO achievmentRates
        AllSectionsCOEvaluations.append(sectionWiseCOEvaluations)
        # List of lists for each sections PLO achievmentRates
        AllSectionsPLOEvaluations.append(sectionWisePLOEvaluations)

    context = {"facultyName": facultyname,
               "noOfSection": dumps(len(sectionIDs)),
               "noOfCOs": dumps(len(coIDs)),
               "noOfPLOs": dumps(len(ploIDs)),
               "data": dumps(AllSectionsCOEvaluations),
               "data2": dumps(AllSectionsPLOEvaluations),
               "form": form,
               "selectedCourseID": selectedCourseID,
               "sectionProgress": dumps(sectionProgress)
               }

    return render(request, "SPM/SemesterStats.html", context)


@allowedUsers(allowedRoles=['Faculty'])
def facultyHistoryStats(request):
    # Evaluation functions
    truncateTable()
    populateCOEvaluation()
    populatePLOEvaluation()

    # Faculty name and id
    facultyname = request.user.get_full_name()
    facultyid = request.user.username

    #[("courseID", "sectionNo", "totalStudents", "sectionID")]
    CurrentSemesterIDs = getCurrentSemesterID(facultyid)
    selectedCourseID = CurrentSemesterIDs[0][0]
    # Making form and list for select
    choices = []
    prev = []
    for id in CurrentSemesterIDs:
        if id[0] == prev:
            continue
        buffer = []
        buffer.append(id[0])
        bufstr = ""
        for i in range(len(id[0])):
            if i < len(id[0]) and i >= len(id[0])-6:
                bufstr = bufstr + id[0][i]

        buffer.append(bufstr)
        choices.append(tuple(buffer))
        prev = id[0]

    choices = tuple(choices)

    class CoursesList(forms.Form):
        courseIDs = forms.ChoiceField(
            choices=choices, label="")

    form = CoursesList

    if request.method == "POST":
        form = CoursesList(request.POST)
        if form.is_valid():
            selectedCourseID = form.cleaned_data["courseIDs"]

    # Showing evaluation for the selected course
    coIDs = getCOs(selectedCourseID)

    # Getting all PLOs mapped to the COs for the selected course
    ploIDs = []
    for coID in coIDs:
        ploID = getPLOID(coID[0])
        ploIDs.append(ploID)

    # Finding all sections for selected course
    sectionIDs = []
    for id in CurrentSemesterIDs:
        if id[0] == selectedCourseID:
            sectionIDs.append(id[3])

    AllSectionsCOEvaluations = []
    AllSectionsPLOEvaluations = []
    for sectionID in sectionIDs:
        # List for each sections each CO achievement rate [co1Rate, co2Rate, co3Rate]
        sectionWiseCOEvaluations = []
        for coID in coIDs:
            coEvaluationRate = getCOEvaluationRate(sectionID, coID[0])
            sectionWiseCOEvaluations.append(coEvaluationRate)

        # List for each sections each PLO achievement rate [plo1Rate, plo2Rate, plo3Rate]
        sectionWisePLOEvaluations = []
        for ploID in ploIDs:
            ploEvaluationRate = getPLOEvaluationRate(sectionID, ploID)
            sectionWisePLOEvaluations.append(ploEvaluationRate)

        # List of lists for each sections CO achievmentRates
        AllSectionsCOEvaluations.append(sectionWiseCOEvaluations)
        # List of lists for each sections PLO achievmentRates
        AllSectionsPLOEvaluations.append(sectionWisePLOEvaluations)

    context = {"facultyName": facultyname,
               "noOfSection": dumps(len(sectionIDs)),
               "noOfCOs": dumps(len(coIDs)),
               "noOfPLOs": dumps(len(ploIDs)),
               "data": dumps(AllSectionsCOEvaluations),
               "data2": dumps(AllSectionsPLOEvaluations),
               "form": form,
               "selectedCourseID": selectedCourseID,
               }

    return render(request, "SPM/FacultyStats.html", context)

# To check if a assessment marksheet is already filled


def isAssessmentFilled(assessments):
    # Dictionary for each assessment
    assessmentEntryDict = {}
    for assessment in assessments:
        if isMarksEntered(assessment[4]):
            assessmentEntryDict[assessment[4]] = 1
        else:
            assessmentEntryDict[assessment[4]] = 0
    return assessmentEntryDict


@allowedUsers(allowedRoles=['Higher Management'])
def dashboard(request):

    #[("name", totalStudents)]
    schoolList = getSchools()
    #[("name", totalStudents)]
    deparmentList = getDepartments()
    #[("name", totalStudents, 'program level', totalcredits, "dpt")]
    programList = getPrograms()
    # Float
    averageCGPA = getAverageCGPA()
    # Int
    totalStudents = getTotalStudents()
    # Name of school,dpt,program
    highestEnrollmentSchool = highestEnrollment(schoolList, 1, 0)
    highestEnrollmentDpt = highestEnrollment(deparmentList, 1, 0)
    highestEnrollmentPrgm = highestEnrollment(programList, 1, 0)

    schoolEnrollmentDataTable = SchoolyearWiseStudentEnrollment(schoolList)
    departmentEnrollmentDataTable = DPTyearWiseStudentEnrollment(deparmentList)
    programEnrollmentDataTable = ProgramYearWiseStudentEnrollment(programList)

    context = {
        "schools": schoolList,
        "schoolList": dumps(schoolList),
        "dpts": deparmentList,
        "dptList": dumps(deparmentList),
        "programs": programList,
        "programList": dumps(programList),
        "avgCGPA": round(averageCGPA, 2),
        "totalStudents": totalStudents,
        "highestSchool": highestEnrollmentSchool,
        "highestDpt": highestEnrollmentDpt,
        "highestPrgm": highestEnrollmentPrgm,
        "dataTable1": dumps(schoolEnrollmentDataTable),
        "dataTable2": dumps(departmentEnrollmentDataTable),
        "dataTable3": dumps(programEnrollmentDataTable),
    }
    return render(request, "SPM/dashboard.html", context)


@allowedUsers(allowedRoles=['Higher Management'])
def schoolDashboard(request):

    #[("name", totalStudents)]
    schoolList = getSchools()
    # Float
    averageCGPA = getAverageCGPA()

    schoolWiseCGPADataTable = getSchoolWiseAverageCGPA(schoolList)
    schoolWisePLODataTable = getSchoolWisePLORate(schoolList)

    # Find avg and highest for current year
    averagePLO = 0
    highestPLO = 0
    highestCGPA = 0.0
    highestSchoolPLO = ""
    highestSchoolCGPA = ""
    for i in range(len(schoolWisePLODataTable[2])-1):
        averagePLO = averagePLO + schoolWisePLODataTable[2][i+1]

        if highestCGPA < schoolWiseCGPADataTable[2][i+1]:
            highestCGPA = schoolWiseCGPADataTable[2][i+1]
            highestSchoolCGPA = schoolList[i][0]

        if highestPLO < schoolWisePLODataTable[2][i+1]:
            highestPLO = schoolWisePLODataTable[2][i+1]
            highestSchoolPLO = schoolList[i][0]

    averagePLO = round(
        float(averagePLO/(len(schoolWisePLODataTable[2]) - 1)), 2)

    context = {
        "schoolList": dumps(schoolList),
        "highestPLO": highestSchoolPLO,
        "highestCGPA": highestSchoolCGPA,
        "avgPLO": averagePLO,
        "avgCGPA": round(averageCGPA, 2),
        "dataTable1": dumps(schoolWiseCGPADataTable),
        "dataTable2": dumps(schoolWisePLODataTable),
    }
    return render(request, "SPM/schoolDashboard.html", context)


@allowedUsers(allowedRoles=['Higher Management'])
def departmentDashboard(request):

    #[("name", totalStudents)]
    departmentList = getDepartments()
    # Data Tables for PLO and CGPA
    DPTWiseCGPADataTable = getDepartmentWiseAverageCGPA(departmentList)
    DPTWisePLODataTable = getDeparmentWisePLORate(departmentList)
    # Find avg and highest for current year
    highestPLO = 0
    highestCGPA = 0.0
    highestSchoolPLO = ""
    highestSchoolCGPA = ""

    # Looping through DataTable and finding stats for Current year
    for i in range(len(DPTWisePLODataTable[2])-1):
        if highestCGPA < DPTWiseCGPADataTable[2][i+1]:
            highestCGPA = DPTWiseCGPADataTable[2][i+1]
            highestSchoolCGPA = departmentList[i][0]

        if highestPLO < DPTWisePLODataTable[2][i+1]:
            highestPLO = DPTWisePLODataTable[2][i+1]
            highestSchoolPLO = departmentList[i][0]

    # ----------------------------------------------------------

    context = {
        "dptList": dumps(departmentList),
        "highestPLO": highestSchoolPLO,
        "highestCGPA": highestSchoolCGPA,
        "dataTable1": dumps(DPTWiseCGPADataTable),
        "dataTable2": dumps(DPTWisePLODataTable),
    }
    return render(request, "SPM/departmentDashboard.html", context)


@allowedUsers(allowedRoles=['Higher Management'])
def programDashboard(request):
    #[("name", totalStudents, 'program level', totalcredits, "dpt")]
    programList = getPrograms()

    # Making form and list for select
    choices = []
    for program in programList:
        buffer = []
        buffer.append(program[0])
        buffer.append(program[0])
        choices.append(tuple(buffer))

    choices = tuple(choices)

    class ProgramsList(forms.Form):
        programs = forms.ChoiceField(
            choices=choices, label="")

    form = ProgramsList
    #----------------------------------#
    # Getting program name for highest CGPA and highest PLO rate
    highestPrgmCGPA = getProgramHighestCGPA()
    highestPrgmPLORate = getProgramHighestPLO()

    selectedProgramName = programList[0][0]
    if request.method == "POST":
        form = ProgramsList(request.POST)
        if form.is_valid():
            selectedProgramName = form.cleaned_data["programs"]

    ploDescriptionTable = getPLOdeetsFromProgram(selectedProgramName)
    programWisePLODataTable = getProgramWisePLORate(selectedProgramName)
    programWiseCGPADataTable = getProgramWiseCGPA(programList)
    print(programWiseCGPADataTable)
    context = {
        "form": form,
        "highestPrgmCGPA": highestPrgmCGPA,
        "highestPrgmPLORate": highestPrgmPLORate,
        "programName": selectedProgramName,
        "programList": dumps(programList),
        "dataTable1": dumps(programWiseCGPADataTable),
        "dataTable2": dumps(programWisePLODataTable),
        "ploTable": ploDescriptionTable
    }
    return render(request, "SPM/programDashboard.html", context)


@allowedUsers(allowedRoles=['Higher Management'])
def courseDashboard(request):

    courseList = getAllCourses()
    selectedCourse = courseList[0]
    # Making List and Form
    choices = []
    for course in courseList:
        buffer = []
        buffer.append(course)
        buffer.append(course[len(course)-6:len(course)])
        choices.append(tuple(buffer))

    choices = tuple(choices)

    class CourseList(forms.Form):
        course = forms.ChoiceField(
            choices=choices, label="")

    form = CourseList
    #----------------------------------#
    # getting user input
    if request.method == "POST":
        form = CourseList(request.POST)
        if form.is_valid():
            selectedCourse = form.cleaned_data["course"]

    ploList = getPLOFromCourse(selectedCourse)
    print(ploList)
    coList = getCOFromCourse(selectedCourse)

    COtoPLOMap = getCOtoPLOMapping(selectedCourse)
    CORateArrayTable = getCourseWiseCORate(selectedCourse, coList)
    PLORateArrayTable = getCourseWisePLORate(selectedCourse, ploList)

    context = {
        "map": COtoPLOMap,
        "courseName": selectedCourse[len(selectedCourse)-6:len(selectedCourse)],
        "form": form,
        "dataTable1": dumps(CORateArrayTable),
        "dataTable2": dumps(PLORateArrayTable)
    }
    return render(request, "SPM/courseDashboard.html", context)
