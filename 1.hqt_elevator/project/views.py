from django.shortcuts import render
from django.template import RequestContext

def my_custom_page_not_found_view(request, *args, **argv):
    response = render('default/404.html', {}, context_instance=RequestContext(request))
    response.status_code = 404
    return response

def my_custom_error_view(request, *args, **argv):
    response = render('default/500.html', {}, context_instance=RequestContext(request))
    response.status_code = 500
    return response