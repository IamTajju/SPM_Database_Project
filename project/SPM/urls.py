from django.urls import path
from . import views


urlpatterns = [
    path("", views.facultyIndex, name="facultyIndex"),
    path("login", views.login_view, name="login"),
    path("logout", views.logout_view, name="logout"),
    path("mapQuestions", views.mapQuestions, name="mapQuestions"),
    path("marksheet/<str:assessmentID>/", views.insertMarks, name="marksheet"),
    path("SemesterStats", views.SemStats, name="SemesterStats"),
    path("FacultyStats", views.facultyHistoryStats, name="FacultyStats"),
    path("homepage", views.homepage, name="homepage"),
    path("dashboard", views.dashboard, name="dashboard"),
    path("schoolDashboard", views.schoolDashboard, name="schoolDashboard"),
    path("departmentDashboard", views.departmentDashboard,
         name="departmentDashboard"),
    path("programDashboard", views.programDashboard, name="programDashboard"),
    path("courseDashboard", views.courseDashboard, name="courseDashboard"),
    path("studentDashboard", views.studentdashboard, name="studentDashboard")
]
