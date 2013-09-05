#-*- coding: utf-8 -*-
# Create your views here.
from django.http import Http404
from blog.models import Article
from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def home(request):
    arts = Article.objects.order_by('-date')
    paginator = Paginator(arts, 5)
    page = request.GET.get('page')
    try:
        articles = paginator.page(page)
    except PageNotAnInteger:
        articles = paginator.page(1)
    except EmptyPage:
        articles = paginator.page(paginator.num_pages)
    return render(request,'blog/allArticles.html', {'art_list': articles})

def view_article(request, art_id):
    try:
        article = Article.objects.get(id=art_id)
    except Article.DoesNotExist:
        raise Http404
    return render(request,'blog/article.html', {'article': article})
