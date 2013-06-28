#-*- coding: utf-8 -*-
# Create your views here.
from django.http import HttpResponse
from django.http import Http404
from blog.models import Article
from django.shortcuts import render

def home(request):
    arts = Article.objects.order_by('-date')
    return render(request,'blog/allArticles.html', {'art_list': arts})

def view_article(request, art_id):
    try:
        article = Article.objects.get(id=art_id)
    except Article.DoesNotExist:
        raise Http404
    return render(request,'blog/article.html', {'article': article})
