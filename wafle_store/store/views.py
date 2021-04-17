from django.shortcuts import render
from store.models import Category


def commonContext( dictParams=None):
  categories = Category.objects.all()
  context = {
    'categories':categories
  }

  if dictParams != None :
    context.update(dictParams)
  return context

def index(request):
  context = commonContext()
  return render(request, 'index.html', context)

