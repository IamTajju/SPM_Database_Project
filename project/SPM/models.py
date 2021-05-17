from django.db import models
from django.db import connection
# Create your models here.


# class University(models.Model):
class AssessmentT(models.Model):
    assessment_id = models.CharField(primary_key=True, max_length=38)
    section = models.ForeignKey(
        'SectionT', models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    assessmenttype = models.CharField(
        db_column='assessmentType', max_length=1, blank=True, null=True)
    # Field name made lowercase.
    assessmentweightage = models.DecimalField(
        db_column='assessmentWeightage', max_digits=10, decimal_places=3, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'assessment_t'


class CoT(models.Model):
    co_id = models.CharField(primary_key=True, max_length=14)
    course = models.ForeignKey(
        'CourseT', models.DO_NOTHING, blank=True, null=True)
    plo = models.ForeignKey('PloT', models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    codescription = models.TextField(
        db_column='coDescription', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'co_t'


class CoevaluationT(models.Model):
    courseenrollment = models.ForeignKey(
        'StudentcourseenrollmentT', models.DO_NOTHING, blank=True, null=True)
    co = models.ForeignKey(CoT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    comarksattainable = models.IntegerField(
        db_column='coMarksAttainable', blank=True, null=True)
    # Field name made lowercase.
    comarksobtained = models.IntegerField(
        db_column='coMarksObtained', blank=True, null=True)
    # Field name made lowercase.
    cobenchmark = models.DecimalField(
        db_column='coBenchmark', max_digits=10, decimal_places=3, blank=True, null=True)
    # Field name made lowercase.
    coachievementstatus = models.CharField(
        db_column='coAchievementStatus', max_length=1, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'coevaluation_t'


class CourseT(models.Model):
    course_id = models.CharField(primary_key=True, max_length=10)
    department = models.ForeignKey(
        'DepartmentT', models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    coursename = models.CharField(
        db_column='courseName', max_length=40, blank=True, null=True)
    # Field name made lowercase.
    totalcredits = models.IntegerField(
        db_column='totalCredits', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'course_t'


class CoursehistoryT(models.Model):
    course = models.ForeignKey(CourseT, models.DO_NOTHING)
    curriculum = models.ForeignKey(
        'CurriculumT', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'coursehistory_t'


class CurriculumT(models.Model):
    curriculum_id = models.CharField(primary_key=True, max_length=38)
    program = models.ForeignKey(
        'ProgramT', models.DO_NOTHING, blank=True, null=True)
    version = models.CharField(max_length=2, blank=True, null=True)
    # Field name made lowercase.
    effectivedate = models.DateField(
        db_column='effectiveDate', blank=True, null=True)
    # Field name made lowercase.
    expirationdate = models.DateField(
        db_column='expirationDate', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'curriculum_t'


class DepartmentT(models.Model):
    department_id = models.CharField(primary_key=True, max_length=38)
    school = models.ForeignKey(
        'SchoolT', models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    deparmentname = models.CharField(
        db_column='deparmentName', max_length=50, blank=True, null=True)
    # Field name made lowercase.
    fname = models.CharField(
        db_column='FName', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    lname = models.CharField(
        db_column='LName', max_length=15, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'department_t'


class FacultyT(models.Model):
    faculty_id = models.CharField(primary_key=True, max_length=7)
    department = models.ForeignKey(
        DepartmentT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    fname = models.CharField(
        db_column='FName', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    lname = models.CharField(
        db_column='LName', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    email = models.CharField(
        db_column='Email', max_length=40, blank=True, null=True)
    # Field name made lowercase.
    contact = models.CharField(
        db_column='Contact', max_length=13, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'faculty_t'


class PloT(models.Model):
    plo_id = models.CharField(primary_key=True, max_length=13)
    # Field name made lowercase.
    ploname = models.CharField(db_column='ploName', max_length=50)
    # Field name made lowercase.
    plodescription = models.TextField(
        db_column='ploDescription', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'plo_t'


class PloevaluationT(models.Model):
    courseenrollment = models.ForeignKey(
        'StudentcourseenrollmentT', models.DO_NOTHING, blank=True, null=True)
    plo = models.ForeignKey(PloT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    plobenchmark = models.DecimalField(
        db_column='ploBenchmark', max_digits=10, decimal_places=3, blank=True, null=True)
    # Field name made lowercase.
    ploachievementstatus = models.CharField(
        db_column='ploAchievementStatus', max_length=1, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'ploevaluation_t'


class PlohistoryT(models.Model):
    plo = models.ForeignKey(PloT, models.DO_NOTHING, blank=True, null=True)
    curriculum = models.ForeignKey(
        CurriculumT, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'plohistory_t'


class ProgramT(models.Model):
    program_id = models.CharField(primary_key=True, max_length=38)
    department = models.ForeignKey(
        DepartmentT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    programname = models.CharField(
        db_column='programName', max_length=50, blank=True, null=True)
    # Field name made lowercase.
    totalcredits = models.IntegerField(
        db_column='totalCredits', blank=True, null=True)
    # Field name made lowercase.
    programlevel = models.CharField(
        db_column='programLevel', max_length=1, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'program_t'


class QuestionT(models.Model):
    question_id = models.CharField(primary_key=True, max_length=38)
    assessment = models.ForeignKey(
        AssessmentT, models.DO_NOTHING, blank=True, null=True)
    co = models.ForeignKey(CoT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    marksattainable = models.IntegerField(
        db_column='marksAttainable', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'question_t'


class SchoolT(models.Model):
    school_id = models.CharField(primary_key=True, max_length=38)
    # Field name made lowercase.
    u = models.ForeignKey('UniversityT', models.DO_NOTHING,
                          db_column='U_ID', blank=True, null=True)
    # Field name made lowercase.
    schoolname = models.CharField(
        db_column='schoolName', max_length=50, blank=True, null=True)
    # Field name made lowercase.
    fname = models.CharField(
        db_column='FName', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    lname = models.CharField(
        db_column='LName', max_length=15, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'school_t'


class SectionT(models.Model):
    section_id = models.CharField(primary_key=True, max_length=38)
    course = models.ForeignKey(
        CourseT, models.DO_NOTHING, blank=True, null=True)
    faculty = models.ForeignKey(
        FacultyT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    sectionno = models.IntegerField(
        db_column='sectionNo', blank=True, null=True)
    # Field name made lowercase.
    timeslot = models.TimeField(db_column='timeSlot', blank=True, null=True)
    days = models.CharField(max_length=2, blank=True, null=True)
    year = models.IntegerField(blank=True, null=True)
    session = models.CharField(max_length=9, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'section_t'


class StudentT(models.Model):
    student_id = models.CharField(primary_key=True, max_length=7)
    # Field name made lowercase.
    u = models.ForeignKey('UniversityT', models.DO_NOTHING,
                          db_column='U_ID', blank=True, null=True)
    # Field name made lowercase.
    fname = models.CharField(
        db_column='Fname', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    lname = models.CharField(
        db_column='Lname', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    email = models.CharField(
        db_column='Email', max_length=25, blank=True, null=True)
    # Field name made lowercase.
    contact = models.CharField(
        db_column='Contact', max_length=13, blank=True, null=True)
    cgpa = models.DecimalField(
        max_digits=10, decimal_places=2, blank=True, null=True)
    studenttype = models.CharField(max_length=1, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'student_t'


class StudentcourseenrollmentT(models.Model):
    # Field name made lowercase.
    courseenrollment_id = models.CharField(
        db_column='courseEnrollment_id', primary_key=True, max_length=38)
    student = models.ForeignKey(
        StudentT, models.DO_NOTHING, blank=True, null=True)
    section = models.ForeignKey(
        SectionT, models.DO_NOTHING, blank=True, null=True)
    # Field name made lowercase.
    classattended = models.IntegerField(
        db_column='classAttended', blank=True, null=True)
    # Field name made lowercase.
    totalclasses = models.IntegerField(
        db_column='totalClasses', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'studentcourseenrollment_t'


class UniversityT(models.Model):
    # Field name made lowercase.
    u_id = models.CharField(db_column='U_ID', primary_key=True, max_length=38)
    # Field name made lowercase.
    uname = models.CharField(
        db_column='UName', max_length=50, blank=True, null=True)
    # Field name made lowercase.
    vcfname = models.CharField(
        db_column='VCFName', max_length=15, blank=True, null=True)
    # Field name made lowercase.
    vclname = models.CharField(
        db_column='VCLName', max_length=15, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'university_t'


class VchistoryT(models.Model):
    # Field name made lowercase.
    u = models.OneToOneField(
        UniversityT, models.DO_NOTHING, db_column='U_ID', primary_key=True)
    # Field name made lowercase.
    fname = models.CharField(db_column='Fname', max_length=15)
    # Field name made lowercase.
    lname = models.CharField(db_column='Lname', max_length=15)
    startdate = models.DateField(blank=True, null=True)
    enddate = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'vchistory_t'
        unique_together = (('u', 'fname', 'lname'),)


class SemestermappingT(models.Model):
    session = models.CharField(primary_key=True, max_length=8)
    # Field name made lowercase.
    startdate = models.DateField(db_column='startDate', blank=True, null=True)
    # Field name made lowercase.
    enddate = models.DateField(db_column='endDate', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'semestermapping_t'
