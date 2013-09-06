#encoding:utf-8
from django import forms
# Models
from django.contrib.auth.models import User
#from dirmed.apps.system_catalogs.models import Country, State, City 

class FrmAddMedic(forms.Form):
	username   = forms.CharField(
		max_length=30,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu nombre de usuario'},
		),
		label="Usuario:",
		required=True
	)
	first_name = forms.CharField(
		max_length=30,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu nombre'},
		),
		label="Nombre (s):",
		required=True
	)
	last_name = forms.CharField(
		max_length=30,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tus apellidos'},
		),
		label="Apellidos:",
		required=True
	)
	email 	= 	forms.EmailField(
		max_length=75,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu Email'},
		),
		label="Email:",
		required=True
	)
	birthday = forms.DateField(
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu Fecha de nacimiento'},
		),
		label='Fecha de Nacimiento',
		required=False
	)
	phone = forms.CharField(
		max_length=15,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu teléfono'},
		),
		label="Telefono:",
		required=True
	)
	address1 = forms.CharField(
		max_length=50,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu calle y numero'},
		),
		label="Calle y numero:",
		required=True
	)
	address2 = forms.CharField(
		max_length=50,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu colonia'},
		),
		label="Colonia:",
		required=True
	)
	zip_code = forms.CharField(
		max_length=50,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu codigo postal'},
		),
		label="Codigo Postal:",
		required=True
	)
	latitude = forms.DecimalField(
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu latitud'},
		),
		label='Latitud:',
		required=False
	)
	longitude = forms.DecimalField(
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu longitude'},
		),
		label='Longitud:',
		required=False
	)
	degree = forms.CharField(
		max_length=50,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu grado de estudios'},
		),
		label="Grado de estudios:",
		required=True
	)
	specialism = forms.CharField(
		max_length=50,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu especialidad'},
		),
		label="Especialidad:",
		required=True
	)
	university = forms.CharField(
		max_length=50,
		widget=forms.TextInput(
			attrs={'placeholder':'Ingresa tu universidad'},
		),
		label="Universidad:",
		required=True
	)
	comments = forms.CharField(
		max_length=50,
		widget=forms.Textarea(),
		label="Comentarios:",
		required=True
	)