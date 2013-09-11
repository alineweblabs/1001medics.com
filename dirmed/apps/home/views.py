from django.shortcuts import render_to_response
from django.template import RequestContext
from django.core.mail import EmailMultiAlternatives
from django.http import HttpResponseRedirect
from dirmed.apps.home.forms import FrmContacto, FrmLogin
from django.core.urlresolvers import reverse
from django.contrib.auth import login, logout, authenticate

def Contact(request):
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
  	return render_to_response('home/contact.html', ctx, context_instance=RequestContext(request))

def Login(request):
	try:
		if not request.user.is_authenticated():
			if request.method == 'POST':
				ObjFrm = FrmLogin(request.POST)
				if ObjFrm.is_valid():
					Username = ObjFrm.cleaned_data['username']
					Password = ObjFrm.cleaned_data['password']
					print 'si llego'
					ObjUser = authenticate(username=Username, password=Password)
					if ObjUser and ObjUser.is_active:
						login(request, ObjUser)
						return HttpResponseRedirect(reverse('Medic.Main'))
					else:
						return 'datos incorrectos'
			else:
				ObjFrm = FrmLogin()
			ctx = {'form':ObjFrm}
			return render_to_response('home/login.html', ctx, context_instance=RequestContext(request))
		else:
			return HttpResponseRedirect(reverse('Medic.Main'))
	except Exception, e:
		raise e

def Logout(request):
	try:
		logout(request)
		return HttpResponseRedirect(reverse('Login'))
	except Exception, e:
		return HttpResponseRedirect(reverse('Medic.Main'))