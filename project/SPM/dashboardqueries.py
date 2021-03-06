from django.db import connection, connections
from .facultyqueries import *
from .achievements import *


def getSchools():
    sql_query = '''SELECT school_t.schoolName, COUNT(DISTINCT(studentcourseenrollment_t.student_id)) FROM school_t, studentcourseenrollment_t, section_t, course_t, department_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND course_t.department_id = department_t.department_id AND department_t.school_id = school_t.school_id GROUP BY school_t.school_id;'''
    schools = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        for row in cursor.fetchall():
            schools.append(row)
    return schools


def getDepartments():
    sql_query = '''SELECT department_t.deparmentName, COUNT(DISTINCT(studentcourseenrollment_t.student_id)) FROM studentcourseenrollment_t, section_t, course_t, department_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = course_t.course_id AND course_t.department_id = department_t.department_id GROUP BY department_t.department_id;'''
    dpts = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        for row in cursor.fetchall():
            dpts.append(row)
    return dpts


def getPrograms():
    sql_query = '''SELECT program_t.programName, COUNT(DISTINCT(studentcourseenrollment_t.student_id)),program_t.programLevel, program_t.totalCredits, department_t.deparmentName FROM department_t, program_t, studentcourseenrollment_t, section_t, programcoursemapping_t WHERE studentcourseenrollment_t.section_id = section_t.section_id AND section_t.course_id = programcoursemapping_t.course_id AND program_t.program_id = programcoursemapping_t.program_id AND program_t.department_id= department_t.department_id AND section_t.year=YEAR(CURRENT_DATE) GROUP BY program_t.program_id;'''
    programs = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        for row in cursor.fetchall():
            programs.append(row)
    return programs


def getAverageCGPA():
    avgCgpa = 0.00
    sql_query = '''SELECT AVG(student_t.cgpa) FROM student_t, studentcourseenrollment_t, section_t WHERE student_t.student_id = studentcourseenrollment_t.student_id AND studentcourseenrollment_t.section_id = section_t.section_id AND section_t.year = YEAR(CURRENT_DATE);'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        row = cursor.fetchone()
        avgCgpa = row[0]
    return avgCgpa


def getTotalStudents():
    total = 0
    sql_query = '''SELECT COUNT(student_t.student_id) FROM student_t;'''
    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        row = cursor.fetchone()
        total = row[0]
    return total


def highestEnrollment(list, i, j):
    highest = 0
    for entity in list:
        if highest < entity[i]:
            highest = entity[i]
            Name = entity[j]
    return Name


def getAllCourses():
    sql_query = '''SELECT course_t.course_id FROM course_t;'''
    courses = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query)
        for row in cursor.fetchall():
            courses.append(row[0])
    return courses


def getPLOFromCourse(courseID):
    sql_query = '''SELECT co_t.plo_id FROM co_t WHERE co_t.course_id = "{}";'''
    plos = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(courseID))
        for row in cursor.fetchall():
            plos.append(row[0])
    return plos


def getCOFromCourse(courseID):
    sql_query = '''SELECT co_t.co_id FROM co_t WHERE co_t.course_id = "{}";'''
    cos = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(courseID))
        for row in cursor.fetchall():
            cos.append(row[0])
    return cos


def getPLOdeetsFromProgram(programName):
    sql_query = '''SELECT plo_t.plo_id, plo_t.ploName, plo_t.ploDescription FROM plo_t, plohistory_t, curriculum_t, program_t WHERE plo_t.plo_id = plohistory_t.plo_id AND plohistory_t.curriculum_id = curriculum_t.curriculum_id AND curriculum_t.program_id = program_t.program_id AND program_t.programName = "{}";'''
    deets = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(programName))
        for row in cursor.fetchall():
            buffer = []
            buffer.append("PLO " + row[0][(len(row[0])-2):len(row[0])])
            buffer.append(row[1])
            buffer.append(row[2])
            deets.append(buffer)
    return deets


def getCOtoPLOMapping(courseID):
    sql_query = '''SELECT co_t.co_id, co_t.plo_id, co_t.coDescription FROM co_t WHERE co_t.course_id = "{}";'''
    deets = []
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(courseID))
        for row in cursor.fetchall():
            buffer = []
            buffer.append(row[0][(len(row[0])-3):len(row[0])])
            buffer.append("PLO " + row[1][(len(row[1])-2):len(row[1])])
            buffer.append(row[2])
            deets.append(buffer)
    return deets


def getStudentCGPA(studentID):
    sql_query = '''SELECT student_t.cgpa FROM student_t WHERE student_t.student_id = "{}";'''
    cgpa = 0.0
    with connection.cursor() as cursor:
        cursor.execute(sql_query.format(studentID))
        row = cursor.fetchone()
        cgpa = float(row[0])

    return cgpa
