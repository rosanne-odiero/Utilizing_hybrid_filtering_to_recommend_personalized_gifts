from django.db import models

# Create your models here.
class RecommendProducts(models.Model):
    CustomerID= models.CharField(max_length=10)
    stockcode= models.CharField(max_length=10)
    description = models.CharField(max_length=200)
    quantity=models.CharField(max_length=5)