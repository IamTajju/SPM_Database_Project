from django.db import connection, connections


def getCOEvaluationRate(sectionID, coID):
    sql_query = '''SELECT ((SELECT COUNT(*) FROM coevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND coevaluation_t.co_id = "{}" AND coevaluation_t.coAchievementStatus = 'Y')/(SELECT COUNT(*) FROM coevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND coevaluation_t.co_id = "{}"));'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(sectionID, coID, sectionID, coID))
        row = cursor.fetchall()
        if row[0][0] != None:
            rate = round((float(row[0][0])), 3)*100
        else:
            rate = 0.0
    return rate


def getPLOEvaluationRate(sectionID, ploID):
    sql_query = '''SELECT(SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND ploevaluation_t.plo_id = "{}" AND ploevaluation_t.ploAchievementStatus = 'Y')/(SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND ploevaluation_t.plo_id = "{}");'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(sectionID, ploID, sectionID, ploID))
        row = cursor.fetchall()
        if row[0][0] != None:
            rate = round((float(row[0][0])), 3)*100
        else:
            rate = 0.0
    return rate


def getCurrentSemProgress(sectionID):
    sql_query = '''SELECT SUM(assessment_t.assessmentWeightage) FROM assessment_t WHERE assessment_t.section_id = "{}";'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(sectionID))
        row = cursor.fetchall()
        progress = row[0][0]

    if progress == None:
        progress = 0.0

    return progress*100


def SchoolyearWiseStudentEnrollment(schoolList):
    sql_query = '''SELECT school_t.schoolName, COUNT(DISTINCT(studentcourseenrollment_t.student_id)) FROM school_t, studentcourseenrollment_t, section_t, course_t, department_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND course_t.department_id = department_t.department_id AND department_t.school_id = school_t.school_id AND section_t.year = {} AND school_t.schoolName = "{}" GROUP BY school_t.school_id;'''
    years = [2019, 2020, 2021]
    arrTable = []
    for year in years:
        yearTbl = []
        yearTbl.append(str(year))
        for school in schoolList:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, school[0]))
                row = cursor.fetchone()
                if row != None:
                    yearTbl.append(row[1])
                else:
                    yearTbl.append(0)
        arrTable.append(yearTbl)

    return arrTable


def DPTyearWiseStudentEnrollment(dptList):
    sql_query = '''SELECT department_t.deparmentName, COUNT(DISTINCT(studentcourseenrollment_t.student_id)) FROM studentcourseenrollment_t, section_t, course_t, department_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND course_t.department_id = department_t.department_id AND section_t.year = {} AND department_t.deparmentName = "{}" GROUP BY department_t.department_id;'''
    years = [2019, 2020, 2021]
    arrTable = []
    for year in years:
        yearTbl = []
        yearTbl.append(str(year))
        for dpt in dptList:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, dpt[0]))
                row = cursor.fetchone()
                if row != None:
                    yearTbl.append(row[1])
                else:
                    yearTbl.append(0)
        arrTable.append(yearTbl)

    return arrTable


def ProgramYearWiseStudentEnrollment(programList):
    sql_query = '''SELECT program_t.programName, COUNT(DISTINCT(studentcourseenrollment_t.student_id)) FROM department_t, program_t, studentcourseenrollment_t, section_t, programcoursemapping_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = programcoursemapping_t.course_id AND program_t.program_id = programcoursemapping_t.program_id AND program_t.department_id= department_t.department_id AND section_t.year={} AND program_t.programName = "{}" GROUP BY program_t.program_id;'''
    years = [2019, 2020, 2021]
    arrTable = []
    for year in years:
        yearTbl = []
        yearTbl.append(str(year))
        for program in programList:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, program[0]))
                row = cursor.fetchone()
                if row != None:
                    yearTbl.append(row[1])
                else:
                    yearTbl.append(0)
        arrTable.append(yearTbl)

    return arrTable


def getSchoolWiseAverageCGPA(schoolList):
    sql_query = '''SELECT school_t.schoolName, AVG(student_t.cgpa) FROM student_t, studentcourseenrollment_t, section_t, course_t,department_t,school_t WHERE student_t.student_id = studentcourseenrollment_t.student_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND course_t.department_id = department_t.department_id AND department_t.school_id = school_t.school_id AND section_t.year = {} AND school_t.schoolName="{}" GROUP BY school_t.school_id;'''
    years = [2019, 2020, 2021]
    arrTable = []
    for year in years:
        yearTbl = []
        yearTbl.append(str(year))
        for school in schoolList:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, school[0]))
                row = cursor.fetchone()
                if row != None:
                    yearTbl.append(round(float(row[1]), 2))
                else:
                    yearTbl.append(0.00)
        arrTable.append(yearTbl)

    return arrTable


def getSchoolWisePLORate(schoolList):
    sql_query = '''SELECT school_t.schoolName, COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, program_t, curriculum_t, plohistory_t, department_t, school_t, studentcourseenrollment_t, section_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = {} AND ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL OR curriculum_t.expirationDate = '') AND curriculum_t.program_id = program_t.program_id AND program_t.department_id = department_t.department_id AND department_t.school_id = school_t.school_id AND school_t.schoolName = "{}" GROUP BY school_t.school_id;'''
    sql_query2 = '''SELECT school_t.schoolName, COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, program_t, curriculum_t, plohistory_t, department_t, school_t, studentcourseenrollment_t, section_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = {} AND ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL OR curriculum_t.expirationDate = '') AND curriculum_t.program_id = program_t.program_id AND program_t.department_id = department_t.department_id AND department_t.school_id = school_t.school_id AND ploevaluation_t.ploAchievementStatus = 'Y' AND school_t.schoolName="{}" GROUP BY school_t.school_id;'''

    years = [2019, 2020, 2021]
    arrTable = []

    for year in years:
        yearTbl = []
        yearTbl.append(str(year))

        for school in schoolList:
            attempted = 0
            achieved = 0
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, school[0]))
                row = cursor.fetchone()
                if row != None:
                    attempted = row[1]
                else:
                    yearTbl.append(0.0)
                    continue
            with connection.cursor() as cursor:
                cursor.execute(sql_query2.format(year, school[0]))
                row = cursor.fetchone()
                if row != None:
                    achieved = row[1]
                else:
                    yearTbl.append(0.0)
                    continue
            yearTbl.append(round(float(achieved/attempted), 2)*100)

        arrTable.append(yearTbl)

    return arrTable


def getDepartmentWiseAverageCGPA(dptList):
    sql_query = '''SELECT department_t.deparmentName, AVG(student_t.cgpa) FROM student_t, studentcourseenrollment_t, section_t, course_t, department_t WHERE student_t.student_id = studentcourseenrollment_t.student_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND course_t.department_id = department_t.department_id AND section_t.year = {} AND department_t.deparmentName = "{}" GROUP BY department_t.department_id;'''
    years = [2019, 2020, 2021]
    arrTable = []
    for year in years:
        yearTbl = []
        yearTbl.append(str(year))
        for dpt in dptList:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, dpt[0]))
                row = cursor.fetchone()
                if row != None:
                    yearTbl.append(round(float(row[1]), 2))
                else:
                    yearTbl.append(0.00)
        arrTable.append(yearTbl)

    return arrTable


def getDeparmentWisePLORate(dptList):
    sql_query = '''SELECT department_t.department_id, COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, program_t, curriculum_t, plohistory_t, department_t, studentcourseenrollment_t, section_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL OR curriculum_t.expirationDate = '') AND curriculum_t.program_id = program_t.program_id AND program_t.department_id = department_t.department_id AND section_t.year = {} AND department_t.deparmentName = "{}" GROUP BY department_t.department_id;'''
    sql_query2 = '''SELECT department_t.department_id, COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, program_t, curriculum_t, plohistory_t, department_t, studentcourseenrollment_t, section_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL OR curriculum_t.expirationDate = '') AND curriculum_t.program_id = program_t.program_id AND program_t.department_id = department_t.department_id AND section_t.year = {} AND department_t.deparmentName = "{}" AND ploevaluation_t.ploAchievementStatus = 'Y' GROUP BY department_t.department_id;'''

    years = [2019, 2020, 2021]
    arrTable = []

    for year in years:
        yearTbl = []
        yearTbl.append(str(year))

        for dpt in dptList:
            attempted = 0
            achieved = 0
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, dpt[0]))
                row = cursor.fetchone()
                if row != None:
                    attempted = row[1]
                else:
                    yearTbl.append(0.0)
                    continue
            with connection.cursor() as cursor:
                cursor.execute(sql_query2.format(year, dpt[0]))
                row = cursor.fetchone()
                if row != None:
                    achieved = row[1]
                else:
                    yearTbl.append(0.0)
                    continue
            yearTbl.append(round(float(achieved/attempted), 2)*100)

        arrTable.append(yearTbl)

    return arrTable


def getProgramHighestCGPA():
    sql_query = '''SELECT program_t.programName, AVG(student_t.cgpa) FROM program_t, studentcourseenrollment_t, section_t, programcoursemapping_t, student_t WHERE student_t.student_id = studentcourseenrollment_t.student_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = programcoursemapping_t.course_id AND program_t.program_id = programcoursemapping_t.program_id AND section_t.year = YEAR(CURRENT_DATE) GROUP BY program_t.program_id;'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        max_val = 0
        programName = ""
        for row in cursor.fetchall():
            if max_val < row[1]:
                max_val = row[1]
                programName = row[0]

    return programName


def getProgramHighestPLO():
    sql_query1 = '''SELECT program_t.programName, COUNT(ploevaluation_t.courseEnrollment_id) FROM ploevaluation_t, plohistory_t, curriculum_t, program_t WHERE ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL OR curriculum_t.expirationDate = "") AND curriculum_t.program_id = program_t.program_id GROUP BY program_t.program_id;'''
    sql_query2 = '''SELECT program_t.programName, COUNT(ploevaluation_t.courseEnrollment_id) FROM ploevaluation_t, plohistory_t, curriculum_t, program_t WHERE ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL OR curriculum_t.expirationDate = "") AND curriculum_t.program_id = program_t.program_id AND ploevaluation_t.ploAchievementStatus = 'Y' GROUP BY program_t.program_id;'''

    achieved = []
    attempted = []

    with connection.cursor() as cursor:
        cursor.execute(sql_query1)
        attempted = cursor.fetchall()

    with connection.cursor() as cursor:
        cursor.execute(sql_query2)
        achieved = cursor.fetchall()

    highestPLOrate = 0.0
    programName = ""
    for i in range(len(achieved)):
        if highestPLOrate < achieved[i][1]/attempted[i][1]:
            highestPLOrate = achieved[i][1]/attempted[i][1]
            programName = achieved[i][0]

    return programName


def getProgramWisePLORate(programName):
    sql_query1 = '''SELECT ploevaluation_t.plo_id, COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, plohistory_t, curriculum_t, program_t WHERE ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL or curriculum_t.expirationDate = "") AND curriculum_t.program_id = program_t.program_id AND program_t.programName = "{}" GROUP BY plo_id;'''
    sql_query2 = '''SELECT ploevaluation_t.plo_id, COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, plohistory_t, curriculum_t, program_t WHERE ploevaluation_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND (curriculum_t.expirationDate IS NULL or curriculum_t.expirationDate = "") AND curriculum_t.program_id = program_t.program_id AND program_t.programName = "{}" AND ploevaluation_t.ploAchievementStatus = "Y" GROUP BY plo_id;'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query1.format(programName))
        attempted = cursor.fetchall()

    with connection.cursor() as cursor:
        cursor.execute(sql_query2.format(programName))
        achieved = cursor.fetchall()

    dataTable = []
    dict = {}
    for i in range(len(attempted)):
        data = []
        PLOrate = 0.0
        programName = attempted[i][0]
        dict[programName] = False
        for j in range(len(achieved)):
            if attempted[i][0] == achieved[j][0]:
                PLOrate = round(float(achieved[j][1]/attempted[i][1]), 2)
                dict[programName] = True
                programName = achieved[j][0]
                break

        if dict[programName] == False:
            programName = attempted[i][0]
            data.append(
                "PLO" + programName[len(programName)-2:len(programName)])
            data.append(0)
        else:
            data.append(
                "PLO" + programName[len(programName)-2:len(programName)])
            data.append(PLOrate*100)
        dataTable.append(data)

    return dataTable


def getProgramWiseCGPA(programList):
    sql_query = '''SELECT program_t.programName, AVG(student_t.cgpa) FROM program_t, studentcourseenrollment_t, section_t, programcoursemapping_t, student_t WHERE student_t.student_id = studentcourseenrollment_t.student_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = programcoursemapping_t.course_id AND program_t.program_id = programcoursemapping_t.program_id AND section_t.year = {} AND program_t.programName = "{}" GROUP BY program_t.program_id;'''
    years = [2019, 2020, 2021]

    arrTable = []

    for year in years:
        yearTbl = []
        yearTbl.append(str(year))
        for program in programList:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(year, program[0]))
                row = cursor.fetchone()
                if row != None:
                    yearTbl.append(round(float(row[1]), 2))
                else:
                    yearTbl.append(0.00)
        arrTable.append(yearTbl)

    return arrTable


def getCourseWisePLORate(courseID, ploList):
    sql_query = '''SELECT (SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t, section_t, course_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND ploevaluation_t.ploAchievementStatus = "Y" AND section_t.year = {} AND course_t.course_id = "{}" AND ploevaluation_t.plo_id = "{}")/(SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t, section_t, course_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND section_t.year = {} AND course_t.course_id = "{}" AND ploevaluation_t.plo_id = "{}");'''
    years = [2019, 2020, 2021]
    arrTable = []

    for ploID in ploList:
        yearTbl = []
        ploName = "PLO " + ploID[len(ploID)-2:len(ploID)]
        yearTbl.append(ploName)
        for year in years:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(
                    year, courseID, ploID, year, courseID, ploID))
                row = cursor.fetchone()
                if row[0] == None:
                    yearTbl.append(0.0)
                else:
                    yearTbl.append(round(float((row[0])*100), 2))
        arrTable.append(yearTbl)

    return arrTable


def getCourseWiseCORate(courseID, coList):
    sql_query = '''SELECT (SELECT COUNT(*) FROM coevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = {} AND section_t.course_id = "{}" AND coevaluation_t.co_id = "{}" AND coevaluation_t.coAchievementStatus = "Y" GROUP BY coevaluation_t.co_id)/(SELECT COUNT(*) FROM coevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = {} AND section_t.course_id = "{}" AND coevaluation_t.co_id = "{}" GROUP BY coevaluation_t.co_id);'''
    years = [2019, 2020, 2021]
    arrTable = []

    for coID in coList:
        yearTbl = []
        coName = coID[len(coID)-3:len(coID)]
        yearTbl.append(coName)
        for year in years:
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(
                    year, courseID, coID, year, courseID, coID))
                row = cursor.fetchone()
                if row[0] == None:
                    yearTbl.append(0.0)
                else:
                    yearTbl.append(round(float(row[0]*100), 2))
        arrTable.append(yearTbl)

    return arrTable


def getAverageCOEvaluationRate(facultyID, coID):
    sql_query = '''SELECT (SELECT COUNT(DISTINCT(coevaluation_t.courseenrollment_id)) FROM coevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.faculty_id = {} AND coevaluation_t.co_id = "{}" AND coevaluation_t.coAchievementStatus = 'Y')/(SELECT COUNT(DISTINCT(coevaluation_t.courseenrollment_id)) FROM coevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.faculty_id = {} AND coevaluation_t.co_id = "{}");'''

    rate = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(facultyID, coID, facultyID, coID))
        row = cursor.fetchone()
        if row[0] != None:
            rate = round(float(row[0]), 3)*100

    return rate


def getAveragePLOEvaluationRate(facultyID, ploID):
    sql_query = '''SELECT (SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.faculty_id = {} AND ploevaluation_t.plo_id = "{}" AND ploevaluation_t.ploAchievementStatus = 'Y')/(SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.faculty_id = {} AND ploevaluation_t.plo_id = "{}");'''

    rate = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(facultyID, ploID, facultyID, ploID))
        row = cursor.fetchone()
        if row[0] != None:
            rate = round(float(row[0]), 3)*100

    return rate


def getAverageGPA(facultyID, courseID):
    sql_query = '''SELECT (SELECT AVG(coevaluation_t.coMarksObtained) FROM coevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = {} AND section_t.faculty_id = {} AND section_t.course_id = "{}")/(SELECT AVG(coevaluation_t.coMarksAttainable) FROM coevaluation_t, studentcourseenrollment_t, section_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = {} AND section_t.faculty_id = {} AND section_t.course_id = "{}")*100;
'''

    gpaList = []
    years = [2019, 2020, 2021]
    for year in years:
        buffer = []
        buffer.append(str(year))
        with connection.cursor() as cursor:
            cursor.execute(sql_query.format(year, facultyID,
                           courseID, year, facultyID, courseID))
            row = cursor.fetchone()

            if row[0] != None:
                if row[0] <= 49:
                    buffer.append(1.0)
                elif row[0] > 49 and row[0] <= 54:
                    buffer.append(1.3)
                elif row[0] > 54 and row[0] <= 59:
                    buffer.append(1.7)
                elif row[0] > 59 and row[0] <= 64:
                    buffer.append(2.0)
                elif row[0] > 64 and row[0] <= 69:
                    buffer.append(2.3)
                elif row[0] > 69 and row[0] <= 74:
                    buffer.append(2.7)
                elif row[0] > 74 and row[0] <= 79:
                    buffer.append(3.0)
                elif row[0] > 79 and row[0] <= 84:
                    buffer.append(3.3)
                elif row[0] > 84 and row[0] <= 89:
                    buffer.append(3.7)
                elif row[0] > 89 and row[0] <= 100:
                    buffer.append(4.0)
            else:
                buffer.append(0.0)
        gpaList.append(buffer)

    return gpaList


def getStudentPLOcourseWiseHistory(studentID):
    sql_query = '''SELECT course_t.course_id, ploevaluation_t.plo_id FROM ploevaluation_t, studentcourseenrollment_t, section_t, course_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.student_id = "{}" AND ploevaluation_t.ploAchievementStatus = "Y" AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id;'''
    dataTable = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(studentID))

        for row in cursor.fetchall():
            data = []
            courseName = row[0][(len(row[0])-6):len(row[0])]
            data.append(courseName)
            ploID = row[1][(len(row[1])-2):len(row[1])]
            ploID = int(ploID)
            data.append(ploID)
            dataTable.append(data)

    return dataTable


def getStudentPLOStats(studentID):

    sql_query1 = '''SELECT ploevaluation_t.plo_id, COUNT(ploevaluation_t.plo_id) FROM ploevaluation_t, studentcourseenrollment_t, section_t, course_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.student_id = "{}" AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id GROUP BY ploevaluation_t.plo_id;'''
    sql_query2 = '''SELECT COUNT(ploevaluation_t.plo_id) FROM ploevaluation_t, studentcourseenrollment_t, section_t, course_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.student_id = "{}" AND ploevaluation_t.ploAchievementStatus = "Y" AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND ploevaluation_t.plo_id = "{}";
'''
    sql_query3 = '''SELECT COUNT(co_t.plo_id) FROM co_t WHERE co_t.plo_id = "{}";'''
    dataTable = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query1.format(studentID))
        rows = cursor.fetchall()
        for row in rows:
            data = []
            ploID = "PLO " + row[0][(len(row[0])-2):len(row[0])]
            data.append(ploID)
            data.append(row[1])
            cursor.execute(sql_query2.format(studentID, row[0]))
            achieved = cursor.fetchone()
            data.append(achieved[0])
            cursor.execute(sql_query3.format(row[0]))
            attemptRequired = cursor.fetchone()
            data.append(attemptRequired[0])
            dataTable.append(data)

    return dataTable


def getStudentCurrentCourses(studentID):
    sql_query = '''SELECT section_t.course_id FROM section_t, studentcourseenrollment_t, semestermapping_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.session = semestermapping_t.session 
AND (MONTH(CURRENT_DATE) BETWEEN MONTH(semestermapping_t.startDate) AND MONTH(semestermapping_t.endDate)) AND section_t.year = YEAR(CURRENT_DATE) AND studentcourseenrollment_t.student_id = "{}";'''

    courseIDs = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(studentID))
        rows = cursor.fetchall()
        for row in rows:
            courseIDs.append(row[0])

    return courseIDs


def getStudentSemProgress(courseIDs, studentID):
    sql_query = '''SELECT coevaluation_t.co_id, ROUND((coevaluation_t.coMarksObtained / coevaluation_t.coMarksAttainable)*100,1) FROM coevaluation_t, co_t, studentcourseenrollment_t WHERE coevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.student_id = "{}" AND coevaluation_t.co_id = co_t.co_id AND co_t.course_id = "{}" GROUP BY coevaluation_t.co_id;'''

    dataTable = [[], [], [], [], []]
    dataTable[0].append("COs")
    for i in range(len(dataTable)-1):
        dataTable[i+1].append("CO"+str(i+1))
        for courseID in courseIDs:
            if i == 0:
                dataTable[0].append(courseID[(len(courseID)-6):len(courseID)])
            with connection.cursor() as cursor:
                cursor.execute(sql_query.format(studentID, courseID))
                rows = cursor.fetchall()
                if not rows:
                    dataTable[i+1].append(0.0)
                else:
                    dataTable[i+1].append(rows[i][1])

    dataTable[0].append("Pass Rate")
    for i in range(len(dataTable)):
        if i != 0:
            dataTable[i].append(40.0)

    return dataTable


def getStudentAveragePLORate(studentID):
    sql_query = '''SELECT (SELECT COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, studentcourseenrollment_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.student_id = "{}" AND ploevaluation_t.ploAchievementStatus = "Y")/(SELECT COUNT(ploevaluation_t.courseenrollment_id) FROM ploevaluation_t, studentcourseenrollment_t WHERE ploevaluation_t.courseenrollment_id = studentcourseenrollment_t.courseEnrollment_id AND studentcourseenrollment_t.student_id = "{}");'''
    rate = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(studentID, studentID))
        row = cursor.fetchone()
        rate = round(float(row[0]), 2)*100

    return rate
