from django.contrib import admin

# Register your models here.
from visithoughtsForm.models import Staff, Department, Feedback

admin.site.register(Staff)
admin.site.register(Department)
admin.site.register(Feedback)