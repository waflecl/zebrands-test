from django.template.defaultfilters import slugify
from django.db import models
from django.contrib.auth.models import User
from store.models import models
from store.enums import OrderStatus


class Category(models.Model):
  name = models.CharField(max_length=255, blank=False, null=False)
  description = models.CharField(max_length=255)
  slug = models.SlugField(max_length=255, blank=True, null=True)
  subcategory = models.ForeignKey('self', on_delete=models.CASCADE, blank=True, null=True)
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)
  deleted_at = models.DateTimeField

  def save(self, *args, **kwargs):
    self.slug = slugify(self.name)
    super(Category, self).save(*args, **kwargs)
  class Meta:
      ordering = ['name']
      verbose_name = 'Category'
      verbose_name_plural = 'Categories'

  def __str__(self):
      return self.name

class Product(models.Model):
  name = models.CharField(max_length=255, blank=False, null=False )
  sku = models.CharField(max_length=255, blank=False, null=False)
  brand = models.CharField(max_length=255, blank=False, null=False)
  price = models.CharField(max_length=255,blank=False, null=False)
  image = models.ImageField(upload_to ='uploads/% Y/% m/% d/')
  description = models.TextField(blank=True, null=True)
  slug = models.SlugField(max_length=255, blank=True, null=True)
  categories = models.ManyToManyField(Category)
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)
  deleted_at = models.DateTimeField

  def save(self, *args, **kwargs):
    self.slug = slugify(self.name)
    super(Product, self).save(*args, **kwargs)
  class Meta:
        ordering = ['name']

  def __str__(self):
      return self.name

class Order(models.Model):
  user = models.ForeignKey(User, on_delete=models.CASCADE)
  total = models.DecimalField(decimal_places=2, max_digits=10)
  status = models.CharField(max_length=255, choices=OrderStatus.choices())
  is_paid = models.BooleanField(default=False)
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)
  deleted_at = models.DateTimeField
  class Meta:
    ordering = ['created_at']

class OrderProduct(models.Model):
  product = models.ForeignKey(Product, on_delete=models.CASCADE)
  order = models.ForeignKey(Order, on_delete=models.CASCADE)

class ProductVisited(models.Model):
  product = models.ForeignKey(Product, on_delete=models.CASCADE)
  session= models.CharField(max_length=40, blank=False, null=False)