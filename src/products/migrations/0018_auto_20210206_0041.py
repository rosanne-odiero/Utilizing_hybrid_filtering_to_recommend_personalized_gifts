# Generated by Django 3.1.1 on 2021-02-05 21:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0017_auto_20210204_1001'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='timestamp',
        ),
        migrations.AlterField(
            model_name='product',
            name='slug',
            field=models.SlugField(blank=True, unique=True),
        ),
    ]
