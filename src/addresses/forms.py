from django import forms

from .models import Address


class AddressForm(forms.ModelForm):
    """
    User-related CRUD form
    """
    class Meta:
        model = Address
        fields = [
            'nickname',
            'full_name',
            #'billing_profile',
            'address_type',
            'address',
           # 'address_line_2',
            'city',
            'country',
            'county',
            'postal_code'
        ]




class AddressCheckoutForm(forms.ModelForm):
    """
    User-related checkout address create form
    """
    class Meta:
        model = Address
        fields = [
            'nickname',
            'full_name',
            #'billing_profile',
            #'address_type',
            'address',
            #'address_line_2',
            'city',
            'country',
            'county',
            'postal_code'
        ]

