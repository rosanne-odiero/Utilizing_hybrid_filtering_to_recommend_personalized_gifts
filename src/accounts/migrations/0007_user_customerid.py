# Generated by Django 3.1.1 on 2021-02-05 23:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0006_remove_user_timestamp'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='CustomerID',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]