from django.contrib import admin

from .models import Item


class ItemAdmin(admin.ModelAdmin):
    list_display = ['id', 'active']


admin.site.register(Item, ItemAdmin)
