from django.urls import path
from django.conf.urls import url

from products.views import(
        ProductListView, 
        ProductDetailSlugView
        )


urlpatterns = [
    path('<slug:slug>/', ProductDetailSlugView.as_view(), name='product'),
    path('', ProductListView.as_view(), name='product')
    
]
