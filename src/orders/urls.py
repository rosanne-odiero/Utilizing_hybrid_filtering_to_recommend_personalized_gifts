from django.conf.urls import url
from django.urls import path

from .views import (
        OrderListView, 
        OrderDetailView,
        VerifyOwnership
        )
app_name = 'orders'
urlpatterns = [
    path('', OrderListView.as_view(), name='list'),
    path('endpoint/verify/ownership/', VerifyOwnership.as_view(), name='verify-ownership'),
    path('<str:order_id>/', OrderDetailView.as_view(), name='detail')
    

 
]