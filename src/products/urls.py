from django.conf.urls import url
from django.urls import path
from .views import (
        ProductListView, 
        ProductDetailSlugView, 
        ProductDownloadView
        )
app_name = 'products'
urlpatterns = [
    path('<slug:slug>/', ProductDetailSlugView.as_view(), name='detail'),
    path('', ProductListView.as_view(), name='list'),
    path('<slug:slug>/<int:pk>/',ProductDownloadView.as_view(), name='download')

    
]

