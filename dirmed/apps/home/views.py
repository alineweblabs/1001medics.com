from django.shortcuts import render_to_response
from django.template import RequestContext
from django.core.mail import EmailMultiAlternatives
from django.http import HttpResponseRedirect
from dirmed.apps.home.forms import FrmContacto

def Contactanos(request):
	Post = False
	Enviado = False
	Msj = ''
	if request.method == 'POST':
		Post = True
		ObjFrm = FrmContacto(request.POST)
		if ObjFrm.is_valid():
			Nombre = ObjFrm.cleaned_data['nombre']
			Correo = ObjFrm.cleaned_data['correo']
			Asunto = ObjFrm.cleaned_data['asunto']
			Mensaje = ObjFrm.cleaned_data['mensaje']
			try:
				Asunto = "DirMed - Contactanos - " + Asunto
				Email = EmailMultiAlternatives(Asunto, Mensaje, Correo, ['hola@alineweblabs.com'])
				Email.attach_alternative(Mensaje, 'text/html')
				Email.send()
				Enviado =True
				Msj = u'Mensaje enviado exitosamente.'
			except Exception, e:
				Msj = u'Error al enviar el mensaje.'
			print Msj
	else:
		ObjFrm = FrmContacto()
	ctx = {'form':ObjFrm,'Enviado':Enviado, 'Post':Post, 'Msj':Msj}
  	return render_to_response('home/contactanos.html', ctx, context_instance=RequestContext(request))