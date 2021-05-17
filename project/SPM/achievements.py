from django.db import connection, connections
from .facultyqueries import *


def getAllSectionIDsAndCourseIDs():
    ids = []
    sql_query = '''SELECT course_t.course_id, section_t.section_id FROM course_t, section_t WHERE section_t.course_id = course_t.course_id;'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        for row in cursor.fetchall():
            ids.append(row)
    return ids


def getAssessments(sectionID):
    assessmentIDs = []
    sql_query = '''SELECT assessment_t.assessment_id FROM assessment_t WHERE assessment_t.section_id = "{}";'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(sectionID))
        for row in cursor.fetchall():
            assessmentIDs.append(row)

    return assessmentIDs


def getCEIDs(sectionID):
    ceIDs = []
    sql_query = '''SELECT studentcourseenrollment_t.courseEnrollment_id FROM studentcourseenrollment_t WHERE studentcourseenrollment_t.section_id = "{}";'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(sectionID))
        for row in cursor.fetchall():
            ceIDs.append(row)

    return ceIDs


def getCOTotalMarks(assessmentID, coID):
    totalMarks = 0.0
    sql_query = '''SELECT SUM(question_t.marksAttainable) FROM question_t WHERE question_t.assessment_id = "{}" AND question_t.co_id="{}";'''
    sql_query2 = '''SELECT assessment_t.assessmentWeightage FROM assessment_t WHERE assessment_t.assessment_id = "{}";'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(assessmentID, coID))
        row = cursor.fetchone()
        totalMarks = row[0]

    if totalMarks == None:
        totalMarks = 0

    weight = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query2.format(assessmentID))
        row = cursor.fetchall()
        weight = row[0][0]

    totalWeightedMarks = weight*totalMarks
    return totalWeightedMarks


def getCOMarksObtained(ceID, assessmentID, coID):
    totalMarksObtained = 0.0
    sql_query = '''SELECT SUM(assessmentmarksheet_t.marksObtained) FROM assessmentmarksheet_t, question_t WHERE assessmentmarksheet_t.assessment_id = "{}" AND assessmentmarksheet_t.courseEnrollment_id = "{}" AND assessmentmarksheet_t.question_id = question_t.question_id AND question_t.co_id = "{}";'''
    sql_query2 = '''SELECT assessment_t.assessmentWeightage FROM assessment_t WHERE assessment_t.assessment_id = "{}";'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(assessmentID, ceID, coID))
        row = cursor.fetchone()
        totalMarksObtained = row[0]

    if totalMarksObtained == None:
        totalMarksObtained = 0

    weight = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query2.format(assessmentID))
        row = cursor.fetchall()
        weight = row[0][0]

    totalWeightedMarks = weight*totalMarksObtained
    return totalWeightedMarks


def inputCOEvaluation(ceID, coID, coTotalMarks, coMarksObtained, status):
    sql_query = '''INSERT INTO coevaluation_t VALUES (%s, %s, %s, %s, %s)'''
    with connection.cursor() as cursor:
        cursor.execute(
            sql_query, (ceID, coID, coTotalMarks, coMarksObtained, status))


def populateCOEvaluation():
    #[("CourseID", "SectionID")]
    ids = getAllSectionIDsAndCourseIDs()

    # Iterating each section
    for id in ids:
        sectionAssessments = getAssessments(str(id[1]))
        coIDs = getCOs(str(id[0]))
        ceIDs = getCEIDs(str(id[1]))

        # Iterating over each CO for the current section/course
        for coID in coIDs:
            coTotalMarks = 0.0
            # Calculating total obtainable marks for current CO in iteration
            for assessment in sectionAssessments:
                bufferMarks1 = getCOTotalMarks(assessment[0], coID[0])
                coTotalMarks = coTotalMarks + float(bufferMarks1)

            # Iterating over each student in the section
            for ceID in ceIDs:
                coMarksObtained = 0.0
                # calculating students marks for the current CO
                for assessment in sectionAssessments:
                    bufferMarks2 = getCOMarksObtained(
                        ceID[0], assessment[0], coID[0])
                    coMarksObtained = coMarksObtained + float(bufferMarks2)

                # Setting achievement status with a benchmarks of 60%
                status = 'N'
                if coMarksObtained >= coTotalMarks*0.6:
                    status = 'Y'

                # inputing data into coEvaluation Table
                if coTotalMarks != 0:
                    inputCOEvaluation(str(ceID[0]), str(
                        coID[0]), coTotalMarks, coMarksObtained, status)


def truncateTable():
    sql_query = '''TRUNCATE TABLE coevaluation_t;'''
    sql_query2 = '''TRUNCATE TABLE ploevaluation_t;'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query)

    with connection.cursor() as cursor:
        cursor.execute(sql_query2)


def getCEIDsFromCOEvaluation():
    ceIDs = []
    sql_query = '''SELECT coevaluation_t.courseenrollment_id FROM coevaluation_t  GROUP BY coevaluation_t.courseenrollment_id;'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        for row in cursor.fetchall():
            ceIDs.append(row)
    return ceIDs


def getCOsFromCOEvaluation(ceID):
    coIDs = []
    sql_query = '''SELECT coevaluation_t.co_id FROM coevaluation_t WHERE coevaluation_t.courseenrollment_id = "{}";'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(ceID))
        for row in cursor.fetchall():
            coIDs.append(row)
    return coIDs


def getPLOID(coID):
    sql_query = '''SELECT co_t.plo_id FROM co_t WHERE co_t.co_id = "{}";'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(coID))
        row = cursor.fetchall()
        ploID = row[0][0]
    return ploID


def getCOStatus(ceID, coID):
    sql_query = '''SELECT coevaluation_t.coAchievementStatus FROM coevaluation_t WHERE coevaluation_t.co_id = "{}" AND coevaluation_t.courseenrollment_id = "{}";;'''

    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(coID, ceID))
        row = cursor.fetchall()
        coStatus = row[0][0]
    return coStatus


def inputPLOEvaluation(ceID, ploID, status):
    sql_query = '''INSERT INTO ploevaluation_t VALUES (%s, %s, %s)'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query, (ceID, ploID, status))


def populatePLOEvaluation():
    # [("ceID")]
    ceIDs = getCEIDsFromCOEvaluation()
    for ceID in ceIDs:
        coIDs = getCOsFromCOEvaluation(ceID[0])
        for coID in coIDs:
            ploID = getPLOID(coID[0])
            status = getCOStatus(ceID[0], coID[0])
            inputPLOEvaluation(ceID[0], ploID, status)
