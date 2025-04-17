from django.urls import path
from . import views

urlpatterns = [
    # <dev elgene>
    path('login/', views.custom_login, name='login'),
    path('logout/', views.custom_logout, name='logout'),
    path('DepartmentDashboard/', views.DepartmentDashboard, name='DepartmentDashboard'),
    path('AdminDashboard/', views.AdminDashboard, name='AdminDashboard'),
    path('feedback/ajax/load-staffs/', views.load_staffs, name='ajax_load_staffs'), # AJAX
    path('change_username/', views.change_username, name='change_username'),
    path('change_password/', views.change_password, name='change_password'),
    # <dev elgene>
    path('show', views.index, name='show'),  
    path('addnew',views.addnew, name='addnew'),  
    path('edit/<int:id>', views.edit, name='edit'),  
    path('update/<int:id>', views.update, name='update'),  
    path('delete/<int:id>', views.destroy, name='delete'),
    # <dev elgene>
    path('showdepartment', views.indexdepartment, name='showdepartment'),  
    path('addnewdepartment',views.addnewdepartment, name='addnewdepartment'),  
    path('editdepartment/<int:id>', views.editdepartment, name='editdepartment'),  
    path('updatedepartment/<int:id>', views.updatedepartment, name='updatedepartment'),  
    path('deletedepartment/<int:id>', views.destroydepartment, name='deletedepartment'),
]