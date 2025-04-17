from django import forms
 
from visithoughtsForm.models import Feedback, Staff, Department
 
class FeedbackCreationForm(forms.ModelForm):
    name = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter your Full Name'}),
    )
    agency = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter your Agency or Office'}),
    )
    email = forms.EmailField(
        widget=forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Enter your Email Address'}),
    )
    purposeOfVisit = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter the purpose of your visit'}),
    )
    dateOfVisit = forms.DateField(
        widget=forms.DateInput(attrs={'class': 'form-control', 'type':'date'}),
    )
    department = forms.ModelChoiceField(
        queryset=Department.objects.all(),
        label='Concerned Department',
        widget=forms.Select(attrs={'class': 'form-select'}),
    )
    staff = forms.ModelChoiceField(
        queryset=Staff.objects.all(),
        label='Attending Staff',
        widget=forms.Select(attrs={'class': 'form-select'}),
    )
    courtesy = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control', 'type': 'range', 'min': '1', 'max': '5', 'value':'3', 'id':'Rating1'}),
    )
    quality = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control', 'type': 'range', 'min': '1', 'max': '5', 'value':'3', 'id':'Rating2'}),
    )
    timeless = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control', 'type': 'range', 'min': '1', 'max': '5', 'value':'3', 'id':'Rating3'}),
    )
    efficiency = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control', 'type': 'range', 'min': '1', 'max': '5', 'value':'3', 'id':'Rating4'}),
    )
    cleanliness = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control', 'type': 'range', 'min': '1', 'max': '5', 'value':'3', 'id':'Rating5'}),
    )
    comfort = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control', 'type': 'range', 'min': '1', 'max': '5', 'value':'3', 'id':'Rating6'}),
    )
    comment = forms.CharField(
        widget=forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Write your comment here',}),
    )

    class Meta:
        model = Feedback
        fields = '__all__'


    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['staff'].queryset = Staff.objects.none()
 
        if 'department' in self.data:
            try:
                department_id = int(self.data.get('department'))
                self.fields['staff'].queryset = Staff.objects.filter(department_id=department_id).order_by('name')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty staff queryset <dev elgene>
        elif self.instance.pk:
            self.fields['staff'].queryset = self.instance.department.staff_set.order_by('name')    
