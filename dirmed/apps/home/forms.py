from django import forms

class FrmContacto(forms.Form):
	nombre  = forms.CharField(widget=forms.TextInput(attrs={'class':'text_input'}), required=True)
	correo  = forms.EmailField(widget=forms.TextInput(attrs={'class':'text_input'}), required=True)
	asunto  = forms.CharField(widget=forms.TextInput(attrs={'class':'text_input'}), required=True)
	mensaje = forms.CharField(widget=forms.Textarea(), required=True)

class FrmLogin(forms.Form):
	username = forms.CharField(widget=forms.TextInput(attrs={'class':'text_input'}), required=True)
	password = forms.CharField(widget=forms.PasswordInput(attrs={'class':'text_input'}), required=True)