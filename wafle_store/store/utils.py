from django.core.mail import send_mail
from django.contrib.auth.models import User
import os
from dotenv import load_dotenv

def send_mail_admins(subject, message):
  # Initialise environment variables
  load_dotenv()
  admins = User.objects.filter(is_superuser=True, is_active=True).exclude(email='').values_list('email', flat=True)
  send_mail(subject, message, os.getenv('EMAIL_HOST_USER'), admins, fail_silently = False)