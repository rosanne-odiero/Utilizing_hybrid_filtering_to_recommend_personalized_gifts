# Generated by Django 3.1.1 on 2021-02-06 22:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0012_auto_20210206_2307'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='quantity',
            field=models.CharField(blank=True, max_length=10),
        ),
    ]
