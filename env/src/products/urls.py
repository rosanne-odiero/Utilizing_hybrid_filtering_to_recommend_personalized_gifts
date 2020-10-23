from django.urls import path
from django.conf.urls import url

from products.views import(
        ProductListView, 
        ProductDetailSlugView
        )

app_name = 'products'
urlpatterns = [
    path('<slug:slug>/', ProductDetailSlugView.as_view(), name='detail'),
    path('', ProductListView.as_view(), name='list')
    
]
