from django.conf.urls import url
from django.urls import path
from recommendation.views import recommendation_view


app_name = 'recommendation'
urlpatterns = [
     path('', recommendation_view, name="recommend"),
    
    
]

