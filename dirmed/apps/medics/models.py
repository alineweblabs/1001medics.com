#encoding:utf-8
from django.db import models
# Models
from django.contrib.auth.models import User
from dirmed.apps.system_catalogs.models import Country, State, City, Language
# Libs
import datetime
from sorl.thumbnail import ImageField

MembershipType = ((1, 'Gratis'),(2, 'Destacado'),(3, 'Premium'),)
Days = (
	(1, 'Lunes'),(2, 'Martes'),(3, 'Miercoles'),(4, 'Jueves'),
	(5, 'Viernes'),(6, 'Sabado'),(7, 'Domingo'),
)

class Schedule(models.Model):
	user         = models.ForeignKey(User,null=True,blank=True,verbose_name=u'Usuario')
	day          = models.CharField(max_length=5,choices=Days,null=True,blank=True,verbose_name=u'Día')
	time_period1 =models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Periodo de horario 1')
	time_period2 =models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Periodo de horario 2')
	closed       = models.BooleanField()

	def __unicode__(self):
		return '%s' % self.user

class Profile(models.Model):
	#Informacion Personal
	user            = models.OneToOneField(User)
	birthday        = models.DateField(null=True,blank=True,default=datetime.date.today())			
	phone           = models.CharField(max_length=15,null=True,blank=True,verbose_name=u'Teléfono')
	#informacion Direccion
	address1        = models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Calle y numero')
	address2        = models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Colonia')
	country         = models.ForeignKey(Country,null=True,blank=True,verbose_name=u'País',related_name='country_for_user')
	state           = models.ForeignKey(State,null=True,blank=True,verbose_name=u'Estado',related_name='state_for_user')
	city            = models.ForeignKey(City,null=True,blank=True,verbose_name=u'Ciudad',related_name='city_for_user')
	zip_code        = models.CharField(null=True,blank=True,max_length=50,verbose_name=u'Codigo Postal')
	latitude        = models.DecimalField(null=True,blank=True, max_digits=6, decimal_places=6,verbose_name=u'Latitud')
	longitude       = models.DecimalField(null=True,blank=True, max_digits=6, decimal_places=6,verbose_name=u'Longitud')
	#Informacion Academica
	degree          = models.CharField(null=True,blank=True,max_length=50,verbose_name=u'Titulo')
	specialism      = models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Especialidad')
	university      = models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Universidad')
	languages       = models.ManyToManyField(Language,null=True,blank=True,verbose_name=u'Lenguajes')
	comments        = models.TextField(max_length=500)
	#Informacion Membresia
	membership_type = models.CharField(max_length=5,choices=MembershipType,null=True,blank=True,verbose_name=u'Tipo de membresia')
	reg_free        = models.DateField(null=True,blank=True)			
	reg_fam_pre     = models.DateField(null=True,blank=True)
	picture         = models.ImageField(upload_to="profile",max_length=200,null=True,blank=True,verbose_name=u'Imagen')

	def __unicode__(self):
		return "%s" % self.user
