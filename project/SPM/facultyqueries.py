from django.db import connection, connections


def getCurrentSemesterCourseDetails(faculty_id):
    # List of tuples, each tuple with courseID, sectionNo, total students.
    courseDetails = []
    with connection.cursor() as cursor:
        cursor.execute('''SELECT course_t.course_id, section_t.sectionNo, COUNT(studentcourseenrollment_t.student_id) FROM course_t, section_t, semestermapping_t, studentcourseenrollment_t WHERE section_t.course_id = course_t.course_id AND section_t.faculty_id = '{}' AND section_t.year=YEAR(CURDATE()) AND semestermapping_t.session IN (SELECT section_t.session FROM section_t) AND MONTH(semestermapping_t.startDate)<MONTH(CURRENT_DATE()) AND studentcourseenrollment_t.section_id = section_t.section_id GROUP BY section_t.section_id;'''.format(faculty_id))
        for row in cursor.fetchall():
            courseDetails.append(row)
    return courseDetails


def getCurrentSemesterID(faculty_id):
    sectionIDs = []
    with connection.cursor() as cursor:
        cursor.execute('''SELECT course_t.course_id, section_t.sectionNo, COUNT(studentcourseenrollment_t.student_id), section_t.section_id FROM course_t, section_t, semestermapping_t, studentcourseenrollment_t WHERE section_t.course_id = course_t.course_id AND section_t.faculty_id = {} AND section_t.year=YEAR(CURDATE()) AND semestermapping_t.session IN (SELECT section_t.session FROM section_t) AND MONTH(semestermapping_t.startDate)<MONTH(CURRENT_DATE()) AND studentcourseenrollment_t.section_id = section_t.section_id GROUP BY section_t.section_id;'''.format(faculty_id))
        for row in cursor.fetchall():
            sectionIDs.append(row)
    return sectionIDs


def getCurrentAssessments(faculty_id):
    assessments = []
    sql_query = '''SELECT course_t.course_id, section_t.sectionNo, assessment_t.assessmentType, assessment_t.assessmentWeightage, assessment_t.assessment_id FROM course_t, section_t, semestermapping_t, assessment_t WHERE section_t.course_id = course_t.course_id AND section_t.faculty_id = {} AND section_t.year=YEAR(CURDATE()) AND semestermapping_t.session IN (SELECT section_t.session FROM section_t) AND MONTH(semestermapping_t.startDate)<MONTH(CURRENT_DATE()) AND assessment_t.section_id = section_t.section_id GROUP BY assessment_t.assessment_id;'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(faculty_id))
        for row in cursor.fetchall():
            assessments.append(row)
    return assessments


def createAssessment(sectionID, assessmentType, assessmentWeight):
    with connection.cursor() as cursor:
        cursor.execute('''INSERT INTO assessment_t VALUES (UUID(), %s, %s, %s);''', (
            sectionID, assessmentType, assessmentWeight))

    with connection.cursor() as cursor:
        cursor.execute('''SELECT assessment_t.assessment_id FROM assessment_t WHERE assessment_t.section_id="{}" AND assessment_t.assessmentType="{}" AND assessment_t.assessmentWeightage = {};'''.format(
            sectionID, assessmentType, assessmentWeight))
        assessmentID = cursor.fetchone()
    return assessmentID[0]


def getCourse(sectionID):
    with connection.cursor() as cursor:
        cursor.execute(
            '''SELECT section_t.course_id FROM section_t WHERE section_t.section_id="{}";'''.format(sectionID))
        courseID = cursor.fetchone()
    return courseID[0]


def getCOs(courseID):
    COs = []
    with connection.cursor() as cursor:
        cursor.execute(
            '''SELECT co_t.co_id FROM co_t WHERE co_t.course_id = "{}";'''.format(courseID))
        for row in cursor.fetchall():
            COs.append(row)
    return COs


def createQuestion(qNo, assessmentID, coID, marks):
    with connection.cursor() as cursor:
        cursor.execute(
            """INSERT INTO question_t VALUES(UUID(),%s, %s, %s, %s);""", (qNo, assessmentID, coID, marks))


def getStudentIDs(assessmentID):
    studentIDs = []
    sql_query = '''SELECT studentcourseenrollment_t.student_id FROM studentcourseenrollment_t, assessment_t WHERE assessment_t.section_id = studentcourseenrollment_t.section_id AND assessment_t.assessment_id="{}";'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(assessmentID))
        for row in cursor.fetchall():
            studentIDs.append(row)
    return studentIDs


def getStudentAndCourseEnrIDs(assessmentID):
    courseEnrollmentIDs = []
    sql_query = '''SELECT studentcourseenrollment_t.student_id ,studentcourseenrollment_t.courseEnrollment_id FROM studentcourseenrollment_t, assessment_t WHERE assessment_t.section_id = studentcourseenrollment_t.section_id AND assessment_t.assessment_id="{}";'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(assessmentID))
        for row in cursor.fetchall():
            courseEnrollmentIDs.append(row)
    return courseEnrollmentIDs


def getAssessmentInfo(assessmentID):
    with connection.cursor() as cursor:
        cursor.execute(
            '''SELECT section_t.course_id, section_t.sectionNo, assessment_t.assessmentType, assessment_t.assessmentWeightage FROM assessment_t, section_t WHERE assessment_t.assessment_id="{}" AND assessment_t.section_id=section_t.section_id;'''.format(assessmentID))
        assessmentInfo = cursor.fetchone()
    return assessmentInfo


def getQuestionInfo(assessmentID):
    questionIDs = []
    sql_query = '''SELECT question_t.question_id, question_t.questionNo, question_t.marksAttainable FROM question_t WHERE question_t.assessment_id = "{}";'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(assessmentID))
        for row in cursor.fetchall():
            questionIDs.append(row)
    return questionIDs


def entryQuestionMark(assessmentID, questionID, ceID, marks):
    with connection.cursor() as cursor:
        cursor.execute(
            """INSERT INTO assessmentmarksheet_t VALUES (%s, %s, %s, %s);""", (assessmentID, questionID, ceID, marks))


def isMarksEntered(assessmentID):
    with connection.cursor() as cursor:
        cursor.execute(
            '''SELECT * from assessmentmarksheet_t WHERE assessmentmarksheet_t.assessment_id = "{}";'''.format(assessmentID))

        row = cursor.fetchone()
        if row == None:
            return False
        else:
            return True


def getQuestionList(assessmentID):
    sql_query = '''SELECT question_t.questionNo, question_t.marksAttainable, question_t.co_id FROM question_t WHERE question_t.assessment_id = "{}";'''
    questions = []

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(assessmentID))
        for row in cursor.fetchall():
            buffer = []
            for i in range(len(row)):
                if i == 2:
                    buffer.append(row[i][(len(row[i])-3):len(row[i])])
                else:
                    buffer.append(row[i])
            questions.append(buffer)

    return questions


def checkIfSemOngoing(sectionID):
    sql_query = '''SELECT SUM(assessment_t.assessmentWeightage) FROM assessment_t WHERE section_id = "{}"'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(sectionID))
        row = cursor.fetchone()
        if row[0] == None:
            return True
        if row[0] >= 1.0:
            return False
        else:
            return True
