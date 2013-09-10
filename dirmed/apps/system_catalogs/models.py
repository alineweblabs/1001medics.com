from django.db import models

class Country(models.Model):
	name = models.CharField(max_length=50, null=False, blank=False)

	def __unicode__(self):
		return '%s' % self.name

class State(models.Model):
	country = models.ForeignKey(Country, null=False, blank=False)
	name    = models.CharField(max_length=50, null=False, blank=False)

	def __unicode__(self):
		return '%s' % self.name

class City(models.Model):
	state = models.ForeignKey(State, null=False, blank=False)
	name  = models.CharField(max_length=50, null=False, blank=False)

	def __unicode__(self):
		return '%s' % self.name

class Language(models.Model):
	name = models.CharField(max_length=50, null=False, blank=False)

	def __unicode__(self):
		return '%s' % self.name