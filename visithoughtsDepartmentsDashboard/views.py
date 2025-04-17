from django.shortcuts import render, redirect
from visithoughtsForm.models import Feedback, Staff, Department
from collections import Counter
from datetime import datetime
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.http import JsonResponse
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.models import User
from .forms import StaffForm, DepartmentForm
from django.contrib import messages
from django.db.models import Count
from django.shortcuts import get_object_or_404

@login_required
def addnewdepartment(request):
    if request.method == "POST":
        form = DepartmentForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                messages.success(request, 'Department added successfully.')
                return redirect('showdepartment')
            except Exception as e:
                # Log the error for debugging purposes
                print(f"An error occurred: {e}")
                # Display an error message to the user
                messages.error(request, 'An error occurred while adding the department. Please try again.')
    else:
        form = DepartmentForm()

    return render(request, 'indexdepartment.html', {'form': form})
# <dev elgene>
@login_required
def indexdepartment(request):
    departments = Department.objects.all().order_by('-id')
    return render(request, "showdepartment.html", {'departments': departments})
# <dev elgene>
@login_required
def editdepartment(request, id):  
    department = Department.objects.get(id=id)
    return render(request, 'editdepartment.html', {'department': department})
# <dev elgene>
@login_required
def updatedepartment(request, id):
    department = get_object_or_404(Department, id=id)

    if request.method == "POST":
        form = DepartmentForm(request.POST, instance=department)
        if form.is_valid():
            new_name = form.cleaned_data['name']

            # Check if the new name is the same as the existing names
            existing_departments = Department.objects.exclude(id=id).filter(name=new_name)
            if existing_departments.exists():
                messages.error(request, 'Department with this name already exists. Please choose a different name.')
            else:
                form.save()
                messages.success(request, 'Department updated successfully.')
                return redirect('showdepartment')
        else:
            messages.error(request, 'Department with this name already exists. Please choose a different name.')

    else:
        form = DepartmentForm(instance=department)

    return render(request, 'editdepartment.html', {'department': department, 'form': form})
# <dev elgene>
@login_required
def destroydepartment(request, id):  
    department = Department.objects.get(id=id)  
    department.delete()  
    return redirect('showdepartment')
# <dev elgene>
@login_required
def addnew(request):  
    if request.method == "POST":  
        form = StaffForm(request.POST)  
        if form.is_valid():  
            try:  
                form.save()  
                return redirect('show')  
            except Exception as e:
                # Handle any exceptions here, for example, logging the error
                print(f"An error occurred: {e}")
                # You might want to display an error message to the user
    else:
        form = StaffForm()
    
    return render(request, 'index.html', {'form': form})  
# <dev elgene>
@login_required
def index(request):
    staffs = Staff.objects.all()
    for staff in staffs:
        department = Department.objects.get(id=staff.department_id)
        staff.department_name = department.name  # Add department_name attribute to staff
    return render(request, "show.html", {'staffs': staffs})
# <dev elgene>
@login_required
def edit(request, id):  
    department_names = Department.objects.all()
    staff = Staff.objects.get(id=id)  
    staff_department = staff.department
    return render(request, 'edit.html', {'employee': staff, 'department_names': department_names, 'staff_department': staff_department})
# <dev elgene>
@login_required
def update(request, id):  
    staff = Staff.objects.get(id=id)
    if request.method == "POST":
        form = StaffForm(request.POST, instance=staff)
        if form.is_valid():
            form.save()
            return redirect('show')
    else:
        form = StaffForm(instance=staff)
    
    department_names = Department.objects.all()
    return render(request, 'edit.html', {'staff': staff, 'form': form, 'department_names': department_names})
# <dev elgene>
@login_required
def destroy(request, id):  
    employee = Staff.objects.get(id=id)  
    employee.delete()  
    return redirect('show')
# <dev elgene>
def custom_login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            first_name = user.first_name
            if first_name =='administrator':
                login(request, user)
                return redirect('AdminDashboard')
            elif first_name == 'Department Of Computer Studies':
                request.session['gene'] = 1
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Department of Arts and Sciences':
                request.session['gene'] = 2
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Department of Teacher Education':
                request.session['gene'] = 3
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Department of Management Studies':
                request.session['gene'] = 4
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Department of Engineering':
                request.session['gene'] = 5
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Department of Industrial Technology':
                request.session['gene'] = 6
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Library':
                request.session['gene'] = 7
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'MIS':
                request.session['gene'] = 8
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'OCA':
                request.session['gene'] = 9
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Human Resource':
                request.session['gene'] = 10
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Cashier':
                request.session['gene'] = 11
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Accounting':
                request.session['gene'] = 12
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Registrar':
                request.session['gene'] = 13
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'ODI':
                request.session['gene'] = 14
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Accreditation':
                request.session['gene'] = 15
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'GAD':
                request.session['gene'] = 16
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Supply':
                request.session['gene'] = 17
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'PPSS':
                request.session['gene'] = 18
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Clinic':
                request.session['gene'] = 19
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'EBA':
                request.session['gene'] = 20
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Research and Extension':
                request.session['gene'] = 21
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'OJT':
                request.session['gene'] = 22
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Planning':
                request.session['gene'] = 23
                login(request, user)
                return redirect('DepartmentDashboard')
            elif first_name == 'Tesda':
                request.session['gene'] = 24
                login(request, user)
                return redirect('DepartmentDashboard')
            # Add more departments and their respective dashboard views as needed
        else:
            # Invalid credentials, show error message
            return render(request, 'login.html', {'error_message': 'Invalid credentials'})
    return render(request, 'login.html')
# <dev elgene>
def custom_logout(request):
    logout(request)
    return redirect('login')  # Redirect to the login page after logging out
# <dev elgene>
@login_required
def AdminDashboard(request):
    department_names = Department.objects.all()
    staff_members = Staff.objects.all()
    feedback_records = Feedback.objects.all()

    # You can access the data here
    selected_department_id = request.POST.get('department')
    selected_staff_id = request.POST.get('attendingStaff')
    start_date = request.POST.get('start-date')
    end_date = request.POST.get('end-date')

    if start_date and end_date:
        # Parse the start and end dates as datetime objects
        start_date = datetime.strptime(start_date, '%Y-%m-%d')
        end_date = datetime.strptime(end_date, '%Y-%m-%d')

        # Filter feedback records by date range
        feedback_records = feedback_records.filter(dateOfVisit__gte=start_date, dateOfVisit__lte=end_date)

    if selected_department_id and selected_department_id != "":
        department = Department.objects.get(id=selected_department_id)
        feedback_records = feedback_records.filter(department=department)

        # Get department name
        selected_department_name = department
    else:
        selected_department_name = "Over All Evaluation"

    if selected_staff_id and selected_staff_id != "":
        staff = Staff.objects.get(id=selected_staff_id)
        feedback_records = feedback_records.filter(staff=staff)

        # Get staff name
        selected_staff_name = staff
    else:
        selected_staff_name = "None"

    # Initialize variables for calculating averages <dev elgene>
    total_records = 0
    total_courtesy = 0
    total_quality = 0
    total_timeless = 0
    total_efficiency = 0
    total_cleanliness = 0
    total_comfort = 0
    sentiments = []

    for feedback in feedback_records:
        total_records += 1
        total_courtesy += (feedback.courtesy) * 20  # Convert to a scale of 0 to 100 <dev elgene>
        total_quality += (feedback.quality) * 20
        total_timeless += (feedback.timeless) * 20
        total_efficiency += (feedback.efficiency) * 20
        total_cleanliness += (feedback.cleanliness) * 20
        total_comfort += (feedback.comfort ) * 20
        sentiments.append(feedback.sentiment)

    # Calculate average values for areas of concern <dev elgene>
    average_courtesy = total_courtesy / total_records if total_records > 0 else 0
    average_quality = total_quality / total_records if total_records > 0 else 0
    average_timeless = total_timeless / total_records if total_records > 0 else 0
    average_efficiency = total_efficiency / total_records if total_records > 0 else 0
    average_cleanliness = total_cleanliness / total_records if total_records > 0 else 0
    average_comfort = total_comfort / total_records if total_records > 0 else 0

    # Calculate the total average <dev elgene>
    total_average = (average_courtesy + average_quality + average_timeless + average_efficiency + average_cleanliness + average_comfort) / 6

    # Count sentiments
    sentiment_counts = dict(Counter(sentiments))
    total_sentiments = sum(sentiment_counts.values())

    selected_staff_id = request.POST.get('attendingStaff')
    start_date = request.POST.get('start-date')
    end_date = request.POST.get('end-date')

     # Count records for each department
    records_per_department = Feedback.objects.values('department').annotate(count=Count('id'))

    # Extract data for plotting
    department_names_for_plot = [item['department'] for item in records_per_department]
    record_counts_for_plot = [item['count'] for item in records_per_department]

    # Count sentiments for each department
    sentiment_counts_per_department = Feedback.objects.values('department', 'sentiment').annotate(count=Count('id'))

    # Print the raw data for debugging
    print("Raw Sentiment Data:", sentiment_counts_per_department)

    # Initialize dictionaries to store sentiment counts for each department
    positive_sentiments_per_department = {}
    negative_sentiments_per_department = {}
    neutral_sentiments_per_department = {}

    for item in sentiment_counts_per_department:
        department = item['department']
        sentiment = item['sentiment'].strip()  # Add strip() to remove leading/trailing spaces
        count = item['count']

        print("Department:", department, "Sentiment:", sentiment, "Count:", count)  # Print for debugging

        if sentiment == 'Positive Sentiment':
            positive_sentiments_per_department[department] = count
        elif sentiment == 'Negative Sentiment':
            negative_sentiments_per_department[department] = count
        elif sentiment == 'Neutral Sentiment':
            neutral_sentiments_per_department[department] = count

    # Print the dictionaries to debug
    print("Positive Sentiments:", positive_sentiments_per_department)
    print("Negative Sentiments:", negative_sentiments_per_department)
    print("Neutral Sentiments:", neutral_sentiments_per_department)

    # Extract data for plotting
    positive_sentiments_for_plot = [positive_sentiments_per_department.get(dep, 0) for dep in department_names_for_plot]
    negative_sentiments_for_plot = [negative_sentiments_per_department.get(dep, 0) for dep in department_names_for_plot]
    neutral_sentiments_for_plot = [neutral_sentiments_per_department.get(dep, 0) for dep in department_names_for_plot]


    # Check if the request expects plain text (for export)
    export_data = {
        'staff_members': staff_members,
        'feedback_records': feedback_records,
        'selected_staff_id': selected_staff_id,
        'selected_staff_name': selected_staff_name,
        'start_date': start_date,
        'end_date': end_date,
        'selected_department_id': selected_department_id,
        'selected_department_name': selected_department_name,
        'department_names': department_names,
        'average_courtesy': average_courtesy,
        'average_quality': average_quality,
        'average_timeless': average_timeless,
        'average_efficiency': average_efficiency,
        'average_cleanliness': average_cleanliness,
        'average_comfort': average_comfort,
        'total_records': total_records,
        'total_average': total_average,
        'sentiment_counts': sentiment_counts,
        'total_sentiments': total_sentiments,
        'department_names_for_plot': department_names_for_plot,  # Added for plotting
        'record_counts_for_plot': record_counts_for_plot,  # Added for plotting
        'positive_sentiments': positive_sentiments_for_plot,
        'negative_sentiments': negative_sentiments_for_plot,
        'neutral_sentiments': neutral_sentiments_for_plot,
    }
    return render (request, 'AdminDashboard.html', export_data)
#--->AJAX
def load_staffs(request):
    department_id = request.GET.get('department_id')
    staffs = Staff.objects.filter(department_id=department_id).all()
    return render(request, 'staff_dropdown_list_options.html', {'staffs': staffs})
#--->end of AJAX <dev elgene>
# <dev elgene>
@login_required
def change_username(request):
    if request.method == 'POST':
        current_username = request.POST['current_username']
        new_username = request.POST['new_username']
        user = User.objects.get(username=current_username)
        if user.check_password(request.POST['current_password']):
            user.username = new_username
            user.save()
            return JsonResponse({'success': True})
        else:
            return JsonResponse({'success': False, 'error': 'Current password is incorrect'})
    else:
        return JsonResponse({'success': False, 'error': 'Invalid request method'})
# <dev elgene>
@login_required
def change_password(request):
    if request.method == 'POST':
        current_username = request.POST.get('current_username')
        current_password = request.POST.get('current_password')
        new_password = request.POST.get('new_password')

        user = User.objects.get(username=current_username)

        if user.check_password(current_password):
            form = PasswordChangeForm(user, {
                'new_password1': new_password,
                'new_password2': new_password,
                'old_password': current_password,
            })
            if form.is_valid():
                form.save()
                update_session_auth_hash(request, user)
                return JsonResponse({'success': True, 'message': 'Password successfully changed'})
            else:
                # Form errors include more specific error messages
                errors = form.errors
                return JsonResponse({'success': False, 'error': errors})
        else:
            return JsonResponse({'success': False, 'error': 'Current password is incorrect'})
    else:
        return JsonResponse({'success': False, 'error': 'Invalid request method'})
# <dev elgene>
@login_required
def DepartmentDashboard(request):
    gene = request.session.get('gene', '')  # Retrieve the data
    
    # this will return the user to the login page if they try to go to the link of the  of the dashbaord
    # without loging in because there will be no seesion id for department id
    if gene=='':
        return redirect('login')    
    
    # You can access the data here
    departmentID = gene
    department = Department.objects.get(id=departmentID)
    staff_members = Staff.objects.filter(department_id=departmentID)
    feedback_records = Feedback.objects.filter(department=department)
    selected_staff_id = request.POST.get('attendingStaff')
    start_date = request.POST.get('start-date')
    end_date = request.POST.get('end-date')

    if selected_staff_id and selected_staff_id != "":
        staff = Staff.objects.get(id=selected_staff_id)
        feedback_records = feedback_records.filter(staff=staff)

        #get staff name
        selected_staff_name=staff    
    else:
        selected_staff_name="Over All Evaluation"    
    
    if start_date and end_date:
        # Parse the start and end dates as datetime objects
        start_date = datetime.strptime(start_date, '%Y-%m-%d')
        end_date = datetime.strptime(end_date, '%Y-%m-%d')
        
        # Filter feedback records by date range
        feedback_records = feedback_records.filter(dateOfVisit__gte=start_date, dateOfVisit__lte=end_date)
    
    # Initialize variables for calculating averages <dev elgene>
    total_records = 0
    total_courtesy = 0
    total_quality = 0
    total_timeless = 0
    total_efficiency = 0
    total_cleanliness = 0
    total_comfort = 0
    sentiments = []

    for feedback in feedback_records:
        total_records += 1
        total_courtesy += (feedback.courtesy) * 20  # Convert to a scale of 0 to 100 <dev elgene>
        total_quality += (feedback.quality) * 20
        total_timeless += (feedback.timeless) * 20
        total_efficiency += (feedback.efficiency) * 20
        total_cleanliness += (feedback.cleanliness) * 20
        total_comfort += (feedback.comfort ) * 20
        sentiments.append(feedback.sentiment)

    # Calculate average values for areas of concern <dev elgene>
    average_courtesy = total_courtesy / total_records if total_records > 0 else 0
    average_quality = total_quality / total_records if total_records > 0 else 0
    average_timeless = total_timeless / total_records if total_records > 0 else 0
    average_efficiency = total_efficiency / total_records if total_records > 0 else 0
    average_cleanliness = total_cleanliness / total_records if total_records > 0 else 0
    average_comfort = total_comfort / total_records if total_records > 0 else 0

    # Calculate the total average <dev elgene>
    total_average = (average_courtesy + average_quality + average_timeless + average_efficiency + average_cleanliness + average_comfort) / 6
    
    # Count sentiments
    sentiment_counts = dict(Counter(sentiments))
    total_sentiments = sum(sentiment_counts.values())

    selected_staff_id = request.POST.get('attendingStaff')
    start_date = request.POST.get('start-date')
    end_date = request.POST.get('end-date')

    return render(request, 'DepartmentDashboard.html', {
        'staff_members': staff_members,
        'feedback_records': feedback_records,
        'selected_staff_id': selected_staff_id,
        'average_courtesy': average_courtesy,
        'average_quality': average_quality,
        'average_timeless': average_timeless,
        'average_efficiency': average_efficiency,
        'average_cleanliness': average_cleanliness,
        'average_comfort': average_comfort,
        'total_records': total_records,
        'total_average': total_average,
        'sentiment_counts': sentiment_counts,
        'total_sentiments': total_sentiments,
        'selected_staff_name': selected_staff_name,
        'start_date':start_date,
        'end_date':end_date,
        'department':department,
    })
# <dev elgene>
