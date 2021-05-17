from django.db import connection, connections


def getCOEvaluationRate(sectionID, coID):
    sql_query1 = '''SELECT COUNT(*) FROM coevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND coevaluation_t.co_id = "{}";'''
    sql_query2 = '''SELECT COUNT(*) FROM coevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = coevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND coevaluation_t.co_id = "{}" AND coevaluation_t.coAchievementStatus = 'Y';'''

    total = 0.0
    achieved = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query1.format(sectionID, coID))
        row = cursor.fetchall()
        total = row[0][0]

    with connection.cursor() as cursor:
        cursor.execute(sql_query2.format(sectionID, coID))
        row = cursor.fetchall()
        achieved = row[0][0]

    if total == 0:
        rate = 0.0
    else:
        rate = (achieved/total)*100
    return rate


def getPLOEvaluationRate(sectionID, ploID):
    sql_query1 = '''SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND ploevaluation_t.plo_id = "{}";'''
    sql_query2 = '''SELECT COUNT(*) FROM ploevaluation_t, studentcourseenrollment_t WHERE studentcourseenrollment_t.courseEnrollment_id = ploevaluation_t.courseenrollment_id AND studentcourseenrollment_t.section_id = "{}" AND ploevaluation_t.plo_id = "{}" AND ploevaluation_t.ploAchievementStatus = 'Y';'''

    total = 0.0
    achieved = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query1.format(sectionID, ploID))
        row = cursor.fetchall()
        total = row[0][0]

    with connection.cursor() as cursor:
        cursor.execute(sql_query2.format(sectionID, ploID))
        row = cursor.fetchall()
        achieved = row[0][0]

    if total == 0:
        rate = 0.0
    else:
        rate = (achieved/total)*100
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
                "PLO" + programName[len(programName)-1:len(programName)])
            data.append(0)
        else:
            data.append(
                "PLO" + programName[len(programName)-1:len(programName)])
            data.append(PLOrate*100)
        dataTable.append(data)

    print(dataTable)
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
