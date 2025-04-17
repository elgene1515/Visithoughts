from django import forms  
from visithoughtsForm.models import Department, Staff
class StaffForm(forms.ModelForm): 
        name = forms.CharField(
            widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter Staff Full Name'}),
        )
        department = forms.ModelChoiceField(
            queryset=Department.objects.all(),
            label='Select Department',
            widget=forms.Select(attrs={'class': 'form-select'}),
        )
        class Meta:
            model = Staff
            fields = '__all__'

class DepartmentForm(forms.ModelForm):
    class Meta:
        model = Department
        fields = ['name']

    def clean_name(self):
        name = self.cleaned_data['name']
        existing_department = Department.objects.filter(name=name)

        if existing_department.exists():
            raise forms.ValidationError('A department with this name already exists.')

        return name