# Generated by Django 3.1.1 on 2021-02-06 20:07

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0021_auto_20210206_1544'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='StockCode',
            new_name='stockcode',
        ),
    ]