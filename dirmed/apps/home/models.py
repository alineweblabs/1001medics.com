#encoding:utf-8
from django.db import models
# Models
from django.contrib.auth.models import User
# Libs
import datetime
from sorl.thumbnail import ImageField

MembershipType = (('1', 'Free'),('2', 'Famous'),('3', 'Premium'),)

class Profile(models.Model):
    #Informacion Personal
	user             = models.OneToOneField(User)
	birthday         = models.DateField(null=True,blank=True,default=datetime.date.today())			
	local_phone      = models.IntegerField(null=True,blank=True,default=0,verbose_name=u'Teléfono')
	#informacion Direccion
	address1         = models.CharField(max_length=100,null=True,blank=True,verbose_name=u'Calle y numero')
	address2         = models.CharField(max_length=100,null=True,blank=True,verbose_name=u'Colonia')
	country          = models.ForeignKey(Country,null=True,blank=True,verbose_name=u'País')
	state            = models.ForeignKey(State,null=True,blank=True,verbose_name=u'Estado')
	city             = models.ForeignKey(City,null=True,blank=True,verbose_name=u'Ciudad')
	zip_code         = models.CharField(null=True,blank=True,max_length=50,verbose_name=u'Codigo Postal')
	latitude = models.DecimalField(null=True,blank=True, max_digits=5, decimal_places=6,verbose_name=u'Latitud')
	longitude = models.DecimalField(null=True,blank=True, max_digits=5, decimal_places=6,verbose_name=u'Longitud')
	#Informacion Academica
	degree         = models.CharField(null=True,blank=True,max_length=50,verbose_name=u'Titulo')
	schedules= models.ForeignKey(Schedules,null=True,blank=True,verbose_name=u'Horarios')
	#periodo de horarios 1
	#periodo de horarios 2
	closed = models.BooleanField()
	especialidad= models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Especialidad')
	universidad= models.CharField(max_length=50,null=True,blank=True,verbose_name=u'Universidad')
	languages= models.ManyToManyField(Language,null=True,blank=True,verbose_name=u'Lenguajes')
	comments = models.TextField()
	#Informacion Membresia
	membership_type = models.CharField(max_length=5,choices=MembershipType,null=True,blank=True,verbose_name=u'Tipo de membresia')
	fecha de registro normal
	fecha de registro destacado premium
	#picture_path = models.ImageField(upload_to="carpeta",max_length=200,null=True,blank=True,verbose_name=u'Imagen')

	def __unicode__(self):
		return "%s" % self.user