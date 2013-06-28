#-*- coding: utf-8 -*-
# Create your views here.
from django.http import HttpResponse
from blog.models import Article
from django.shortcuts import render

def home(request):
    arts = Article.objects.order_by('-date')
    return render(request,'blog/allArticles.html', {'art_list': arts})

def view_article(request, art_id):
    article = Article.objects.get(id=art_id)
    return render(request,'blog/article.html', {'article': article})
