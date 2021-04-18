from django.http import Http404
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
  if products != None: 
    context = commonContext(products)
  else:
    context = commonContext()
  return render(request, 'index.html', context)

def product(request, slug):
  try:
    product = Product.objects.filter(slug=slug)
  except Product.DoesNotExist:
    raise Http404("Product doesn't exist")
  return render(request, 'product.html', commonContext(product))

def category(request, slug):
  try:
    category = Category.objects.filter(slug=slug)
  except Category.DoesNotExist:
    raise Http404("Category doesn't exist")
  return render(request, 'category.html', commonContext(category))

