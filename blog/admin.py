from django.contrib import admin
from blog.models import Article
 
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'autor', 'date')
    list_filter = ('autor',)
    date_hierarchy = 'date'
    ordering = ('date',)
    search_fields  = ('title', 'content', 'preContent')
    
    
    def get_form(self, request, obj=None, **kwargs):
        form = super(ArticleAdmin, self).get_form(request, obj, **kwargs)
        form.current_user = request.user
        return form

admin.site.register(Article, ArticleAdmin)
