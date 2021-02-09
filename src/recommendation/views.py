from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView, View
from recommendation.utils import utils
from accounts.models import User
from products.models import Product
from recommendation.models import RecommendProducts
import numpy as np
import pandas as pd
from django.conf import settings
from recommendation.forms import RecommendForm
# Create your views here.


def recommendation_view(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = RecommendForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            email = form.cleaned_data['email']
            context = {
                'form': form,
                'email': email
            }

            if email:
                # customers
                customers_list=User.objects.all()
                customers_ids_list = []
                for customer in customers_list:
                    customers_ids_list.append(customer.CustomerID)
                customers_arr = np.array(customers_ids_list)

                # products
                products_list=Product.objects.all()
                products_ids_list = []
                for product in products_list:
                    products_ids_list.append(product.stockcode)
                products_arr = np.array(products_ids_list)

                # item lookup
                # recommend_list=RecommendProducts.objects.all()
                # item_lookup_list = []
                # item_lookup_dict = {}
                # for item in recommend_list:
                #     item_lookup_dict['StockCode'] = item.stockcode
                #     item_lookup_dict['Description'] = item.description
                #     item_lookup_list.append(item_lookup_dict)
                # item_lookup = pd.DataFrame(item_lookup_list)
                retail_data = pd.read_csv(settings.PURCHASE_URL)
                item_lookup = retail_data[['StockCode', 'Description']]

                customer = User.objects.get(email=email)
                customer_id = customer.CustomerID

                # recommended_products_ids_list = rec_items_pickle_app(customer_id, customers_arr, products_arr, item_lookup)
                # recommended_products = []
                # for stockcode in recommended_products_ids_list:
                #     recommended_products.append(Product.objects.get(stockcode=stockcode))
                recommended_products_df= utils.rec_items(12346, utils.product_train, utils.user_vecs, utils.item_vecs, utils.customers_arr, utils.products_arr, item_lookup, num_items = 10)

                recommended_products = []
                for stockcode in recommended_products_df['StockCode']:
                    recommended_products.append(Product.objects.get(stockcode=stockcode)) # Product.objects.get(stockcode=stockcode)


                context['products'] = recommended_products

                # redirect to a new URL:
                return render(request, "recommendation/recommendation_results.html", context)

    else:
        form = RecommendForm()

        context = {
            'form': form
        }
        return render(request, "recommendation/recommend.html", context)

    

    # if form.email:
    #     # customers
    #     customers_list=User.objects.all()
    #     customers_ids_list = []
    #     for customer in customers_list:
    #         customers_ids_list.append(customer.CustomerID)
    #     customers_arr = np.array(customers_ids_list)

    #     # products
    #     products_list=Product.objects.all()
    #     products_ids_list = []
    #     for product in products_list:
    #         products_ids_list.append(product.stockcode)
    #     products_arr = np.array(products_ids_list)

    #     # item lookup
    #     # recommend_list=RecommendProducts.objects.all()
    #     # item_lookup_list = []
    #     # item_lookup_dict = {}
    #     # for item in recommend_list:
    #     #     item_lookup_dict['StockCode'] = item.stockcode
    #     #     item_lookup_dict['Description'] = item.description
    #     #     item_lookup_list.append(item_lookup_dict)
    #     # item_lookup = pd.DataFrame(item_lookup_list)
    #     retail_data = pd.read_csv(settings.PURCHASE_URL)
    #     item_lookup = retail_data[['StockCode', 'Description']]

    #     customer_id = 12346

    #     recommended_products_ids_list = rec_items_pickle_app(customer_id, customers_arr, products_arr, item_lookup)
    #     recommended_products = []
    #     for stockcode in recommended_products_ids_list:
    #         recommended_products.append(Product.objects.get(stockcode=stockcode))

    #     context['products'] = recommended_products
    
#    product_data = pd.read_csv(settings.PRODUCT_URL)

    

