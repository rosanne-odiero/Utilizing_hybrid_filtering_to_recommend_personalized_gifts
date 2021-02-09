from django import forms
from accounts.models import User

class RecommendForm(forms.Form):
    email = forms.CharField(label='Enter recipient\'s email', max_length=100)