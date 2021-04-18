from django.http import Http404
from django.shortcuts import render
from store.models import Category, Product

def commonContext( dict_params=None):

  context = {}
  categories = Category.objects.all()
  context.update({'categories' : categories})
  if dict_params != None :
      context.update(dict_params)
  return context

def index(request):
  products = Product.objects.all()
  dictionary = {'products':products}
  return render(request, 'index.html', dictionary)

def product(request, slug):
  try:
    product = Product.objects.get(slug=slug)
    dictionary = {'product':product}
  except Product.DoesNotExist:
    raise Http404("Product doesn't exist")
  return render(request, 'product.html', commonContext(dictionary))

def category(request, slug):
  try:
    category = Category.objects.get(slug=slug)
    products = Product.objects.filter(categories=category)
    dictionary = {'category':category, 'products':products}
  except Category.DoesNotExist:
    raise Http404("Category doesn't exist")
  
  return render(request, 'category.html', commonContext(dictionary))

