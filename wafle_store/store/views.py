from django.http import Http404
from django.shortcuts import render
from django.views.defaults import page_not_found
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
    countVisited = ProductVisited.objects.filter(product=product,session=request.session.session_key).count()
    if countVisited == 0 :
      ProductVisited.objects.create(product=product,session=request.session.session_key)
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

def handler404(request, *args, **argv):
    response = render_to_response('404.html', {}, context_instance=RequestContext(request))
    response.status_code = 404
    return response

