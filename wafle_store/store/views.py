from django.shortcuts import render
from store.models import Category, Product


def commonContext( dictParams=None):
  categories = Category.objects.all()
  context = {
    'categories':categories
  }

  if dictParams != None :
    if dictParams[0] :
      context.update(
        {dictParams[0]._meta.model.__name__:dictParams}
      )
  return context

def index(request):
  products = Product.objects.all()
  context = None
  if products : 
    context = commonContext(products)
  else:
    context = commonContext()
  return render(request, 'index.html', context)

