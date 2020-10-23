from django.db import models
import random
import os
from django.template.defaultfilters import slugify
from django.urls import reverse
import uuid
# Create your models here.


def get_filename_ext(filepath):
    base_name= os.path.basename(filepath)
    name, ext= os.path.splitext(base_name)
    
    return name,ext

def upload_image_path(instance,filename):
    #print(instance)
    #print(filename)
    new_filename= random.randint(1,2345678987)
    ext = get_filename_ext(filename)
    final_filename=  '{new_filename}{ext}'. format(new_filename=new_filename, ext=ext)
    return "products/{new_filename}/{final_filename}". format(
        new_filename=new_filename,
         final_filename=final_filename
         )



class ProductQuerySet(models.QuerySet):
    def active(self):
        return self.filter(active=True)

    def featured(self):
        return self.filter(featured=True, active=True)

class ProductManager(models.Manager):
    def get_queryset(self):
        return ProductQuerySet(self.model, using=self._db)

    def active(self):
        return super(ProductManager,self).get_queryset().active()

    def featured(self): 
        return super(ProductManager,self).get_queryset().filter(featured =True)

    def get_by_id(self, id):
        qs = self.get_queryset().filter(id=id)
        if qs.count() == 1:
            return qs.first()
        return None
       
class Product(models.Model):
    title = models.CharField(max_length=120)
    slug = models.SlugField(max_length=500, blank=True, unique=True,default=uuid.uuid1)
    description = models.TextField()
    price= models.DecimalField(decimal_places=2, max_digits=10,default=39.99)
    image = models.ImageField(upload_to=upload_image_path, null=True, blank=True)
    featured = models.BooleanField(default=False)
    active = models.BooleanField(default=True)
    timestamp       = models.DateTimeField(auto_now_add=True)
    objects = ProductManager()


    def get_absolute_url(self):
        #return "/products/{slug}/".format(slug=self.slug)
        return reverse("products:detail", kwargs={"slug": self.slug})


    def __str__(self):
        return self.title



    def save(self, *args, **kwargs):
        self.url= slugify(self.title)
        super(Product, self).save(*args, **kwargs)    

    

    