# Generated by Django 3.1.1 on 2021-02-03 19:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0015_productfile_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='stockcode',
            field=models.CharField(default=0, max_length=120),
            preserve_default=False,
        ),
    ]