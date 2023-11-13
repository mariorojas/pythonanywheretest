from django.shortcuts import render

from .models import Item


def index(request):
    context = {
        'item_list': Item.objects.all(),
        'message': 'Hello, World!',
    }
    return render(request, 'items/index.html', context)
