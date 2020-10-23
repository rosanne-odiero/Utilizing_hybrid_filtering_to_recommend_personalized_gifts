"""recommendgift URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static

from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
'''from products.views import(
        ProductListView, 
        product_list_view, 
        ProductDetailView, 
        product_detail_view,
        ProductFeaturedListView,
        ProductDetailSlugView,
        ProductFeaturedDetailView
        )'''
from . import views

urlpatterns = [
    path('', views.home_page, name='home'),
    path('about/', views.about_page, name='about'),
    path('contact/', views.contact_page, name='contact'),
    path('login/', views.login_page, name='login'),
    path('register/', views.register_page, name='register'),
    path('products/', include('products.urls', namespace='products')),
    path('search/', include('search.urls', namespace='search')),
    path('admin/', admin.site.urls)
    #path('featured/', ProductFeaturedListView.as_view(), name='featured'),
    #path('featured/<int:pk>/', ProductFeaturedDetailView.as_view(), name='featuredfbv'),
    #path('products/', ProductListView.as_view(), name='product'),
    #path('products-fbv/', product_list_view, name='productsfbv'),
    #path('products/<int:pk>/', ProductDetailView.as_view(), name='product'),
    #path('products/<slug:slug>/', ProductDetailSlugView.as_view(), name='product'),
    #path('products-fbv/<int:pk>/', product_detail_view, name='productsfbv'),
    
    
]
if settings.DEBUG:
    urlpatterns = urlpatterns + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns = urlpatterns + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)