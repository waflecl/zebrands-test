from django.http import Http404
from django.shortcuts import render
from django.views.defaults import page_not_found
from django.utils.crypto import get_random_string
from store.models import Category, Product, ProductVisited

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
  return render(request, 'index.html', commonContext(dictionary))

def product(request, slug):
  try:
    product = Product.objects.get(slug=slug)
    if not request.session['session_key'] :
        request.session['session_key'] = get_random_string(length=32)
    countVisited = ProductVisited.objects.filter(product=product,session=request.session['session_key']).count()    
    if countVisited == 0 :      
      ProductVisited.objects.create(product=product,session=request.session['session_key'])
    dictionary = {'product':product, 'count_visited':countVisited}
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

def error_404(request, exception):
  return render(request,'404.html', commonContext())

def error_500(request,  exception):
  return render(request,'500.html', {})  