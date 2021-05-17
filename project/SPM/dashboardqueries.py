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
