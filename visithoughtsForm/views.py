from django.shortcuts import render, redirect
from .forms import FeedbackCreationForm
from .models import Staff

#landing
def landing(request):
    return render(request, 'landing.html')
#landing

# -- Your view for creating Feedback objects -- <dev elgene>
def create_view(request):
    form = FeedbackCreationForm()
    if request.method == 'POST':
        form = FeedbackCreationForm(request.POST)
        if form.is_valid():
            # Get the selected department and staff objects
            department = form.cleaned_data['department']
            staff = form.cleaned_data['staff']

            # Extract the names of the department and staff
            department_name = department.name
            staff_name = staff.name

            # Extract the comment text from the form
            comment_text = form.cleaned_data['comment']

            # Perform sentiment analysis on the comment text
            sentiment = perform_sentiment_analysis(comment_text)
            print("Sentiment:", sentiment)  # Add this debug print

            # Save the record with department and staff names and sentiment
            feedback = form.save(commit=False)  # Don't save it to the database yet
            feedback.department = department_name
            feedback.staff = staff_name
            feedback.sentiment = sentiment  # Assign the sentiment value
            feedback.save()  # Now save it to the database

            return redirect('formsubmitted')
    return render(request, 'home.html', {'form': form})

#--->AJAX <dev elgene>
def load_staffs(request):
    department_id = request.GET.get('department_id')
    staffs = Staff.objects.filter(department_id=department_id).all()
    return render(request, 'staff_dropdown_list_options.html', {'staffs': staffs})
#--->end of AJAX

#--->start of sentiment Analysis <dev elgene>
import string
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from nltk.sentiment.vader import SentimentIntensityAnalyzer

def perform_sentiment_analysis(text):
    # Convert the text to lower case
    elgene = text.lower()

    # Remove punctuation from the text.
    reyes = elgene.translate(str.maketrans('', '', string.punctuation))

    # Tokenization of the words using the nltk library
    tokenized_words = word_tokenize(reyes, "english")

    # Remove words that do not add meaning to the sentiment
    final_words = [word for word in tokenized_words if word not in stopwords.words('english')]

    # Perform sentiment analysis using VADER
    score = SentimentIntensityAnalyzer().polarity_scores(reyes)
    neg = score['neg']
    pos = score['pos']

    if neg > pos:
        return "Negative Sentiment"
    elif pos > neg:
        return "Positive Sentiment"
    else:
        return "Neutral Sentiment"
#--->end of sentiment analysis

#--->after submission <dev elgene>
def formsubmitted(request):
    # Your view logic here
    return render(request, 'formsubmitted.html')
#--->end after submission