#-*- coding: utf-8 -*-
from django.db import models

class Article(models.Model):
    title = models.CharField(max_length=100)
    autor = models.CharField(max_length = 20)
    preContent = models.TextField(null=True)
    content = models.TextField()
    date = models.DateTimeField(auto_now_add=True, auto_now=False, verbose_name="Date de parution")

    models.DateTimeField(auto_now_add=True, auto_now=False, verbose_name="Date de parution")

    def __unicode__(self):
        return u"%s" % self.titre
