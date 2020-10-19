from django.http import Http404

from django.views.generic import ListView
from django.views.generic import DetailView

from django.shortcuts import render, get_object_or_404
from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned

from .models import Product

class ProductDetailSlugView(DetailView):
    model= Product
    template_name = "product/detail.html"

def get_object(self, *args, **kwargs):

    request = self.request
    slug = self.kwargs.get('slug')
    #instance = get_object_or_404(Product, slug=slug, active=True)
    try:
        instance = Product.objects.get(slug=slug, active=True)
    except Product.DoesNotExist:
        raise Http404("Not found..")
    except Product.MultipleObjectsReturned:
        qs = Product.objects.filter(slug=slug, active=True).first()
    except:
        raise Http404("Uhhmmm ")
    return instance

class ProductFeaturedListView(ListView):
    template_name = "product/list.html"

    def get_queryset(self, *args, **kwargs):
        request = self.request
        return Product.objects.featured()


class ProductFeaturedDetailView(DetailView):
    queryset = Product.objects.featured()
    template_name = "product/featured-detail.html"

     



class ProductListView(ListView):
    
    model= Product
    template_name = "product/list.html"


def product_list_view(request):         
    model= Product
    context = {
        'object_list': model
    }
    return render(request, "product/list.html", context)


class ProductDetailView(DetailView):
    model= Product
    template_name = "product/detail.html"
    

def get_context_data(self, *args, **kwargs):
    context = super(ProductDetailView, self).get_context_data(*args, **kwargs)
    print(context)
    return context


def get_object(self, *args, **kwargs):
    request = self.request
    pk = self.kwargs.get('pk')
    instance = Product.objects.get_by_id(pk)
    if instance is None:
        raise Http404("Product doesn't exist")
    return instance


def product_detail_view(request, pk=None, *args, **kwargs):

    #instance = get_object_or_404(Product, pk=pk)
    instance = Product.objects.get(pk=pk, featured=True)
    instance = Product.objects.get_by_id(pk)
    if instance is None:
        raise Http404("Product doesn't exist")

    context = {
        'object': instance
    }
    return render(request, "product/detail.html", context)



