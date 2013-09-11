from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from dirmed.apps.medics.forms import FrmAddMedic

def MedicAdd(request):
	if request.method == 'POST':
		ObjFrm = FrmAddMedic(request.POST)
		if ObjFrm.is_valid():
			return 'post'
	else:
		ObjFrm = FrmAddMedic()
	ctx = {'form':ObjFrm}
	return render_to_response('medics/medic_edit.html', ctx, context_instance=RequestContext(request))

def MedicMain(request):
	return render_to_response('medics/medic_main.html', context_instance=RequestContext(request))