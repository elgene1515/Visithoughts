from django.db import models

#structure of department table <dev elgene>
class Department(models.Model):
    name = models.CharField(max_length=40)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'visithoughtsform_department'

#structure of staff table <dev elgene>
class Staff(models.Model):
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    name = models.CharField(max_length=40)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'visithoughtsform_staff'

#structure of feedback table <dev elgene>
class Feedback(models.Model):
    name = models.CharField(max_length=124)
    agency = models.CharField(max_length=100)
    email = models.CharField(max_length=125)
    purposeOfVisit = models.CharField(max_length=125)
    dateOfVisit = models.DateField()
    department = models.CharField(max_length=40, blank=True, null=True)
    staff = models.CharField(max_length=40, blank=True, null=True)
    courtesy=models.PositiveIntegerField()
    quality=models.PositiveIntegerField()
    timeless=models.PositiveIntegerField()
    efficiency=models.PositiveIntegerField()
    cleanliness=models.PositiveIntegerField()
    comfort=models.PositiveIntegerField()
    comment=models.TextField()
    sentiment=models.CharField(max_length=20, null=True, blank=True)

    class Meta:
        db_table = 'visithoughtsform_feedback'