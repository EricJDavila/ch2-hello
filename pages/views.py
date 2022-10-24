# En pages/urls.py
from django.http import HttpResponse

def home_page_view(request):
    return HttpResponse("Hola mundo de niños!")