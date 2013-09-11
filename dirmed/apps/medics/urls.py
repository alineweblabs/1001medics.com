from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('dirmed.apps.medics.views',
	url(r'^medic.add/$', 'MedicAdd', name='Medic.Add'),
	url(r'^medic.main/$', 'MedicMain', name='Medic.Main'),
)