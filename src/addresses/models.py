from django.db import models
from django.urls import reverse
from billing.models import BillingProfile

ADDRESS_TYPES = (
    ('mailing', 'Mailing address'),
    ('shipping', 'Shipping address'),
)

class Address(models.Model):
    billing_profile = models.ForeignKey(BillingProfile, on_delete=models.CASCADE)
    full_name       = models.CharField(max_length=120, null=True, blank=True, help_text='Shipping to? Who is it for?')
    nickname        = models.CharField(max_length=120, null=True, blank=True, help_text='Internal Reference Nickname')
    address_type    = models.CharField(max_length=120, choices=ADDRESS_TYPES)
    address  = models.CharField(max_length=120)
    #Maiiling_address  = models.CharField(max_length=120, null=True, blank=True)
    country            = models.CharField(max_length=120)
    county         = models.CharField(max_length=120, default='Kenya')
    city           = models.CharField(max_length=120)
    postal_code     = models.CharField(max_length=120)

    def __str__(self):
        if self.nickname:
            return str(self.nickname)
        return str(self.address)

    def get_absolute_url(self):
        return reverse("address-update", kwargs={"pk": self.pk})

    def get_short_address(self):
        for_name = self.full_name 
        if self.nickname:
            for_name = "{} | {},".format( self.nickname, for_name)
        return "{for_name} {address}, {city}".format(
                for_name = for_name or "",
                address = self.address,
                city = self.city
            ) 
 
    def get_address(self):
        return "{for_name}\n{address}\n{city}\n{county}, {postal}\n{country}".format(
                for_name = self.full_name or "",
                address = self.address,
                #line2 = self.Maiiling_address or "",
                city = self.city,
                county = self.county,
                postal= self.postal_code,
                country = self.country
            )