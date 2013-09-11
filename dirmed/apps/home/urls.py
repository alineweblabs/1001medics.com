from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('dirmed.apps.home.views',
	url(r'^contact/$', 'Contact', name='Contact'),
	url(r'^login/$', 'Login', name='Login'),
	url(r'^logout/$', 'Logout', name='Logout'),
)