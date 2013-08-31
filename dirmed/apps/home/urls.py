from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('dirmed.apps.home.views',
	url(r'^contactanos/$', 'Contactanos', name='Contactanos'),
)