from django.urls import path
from . import views
 
urlpatterns = [
    path('', views.landing, name='landing'),
    path('form/', views.create_view, name='add'),
    path('formsubmitted/', views.formsubmitted, name='formsubmitted'),
    path('feedback/ajax/load-staffs/', views.load_staffs, name='ajax_load_staffs'), # AJAX
]