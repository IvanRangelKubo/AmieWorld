
{# Account validation #}
{% if account_validation == 'pending' %}

	<div class="seccinternas">
		<div class="custom-container">
			<div class="w-layout-layout stackaccount wf-layout-layout">

				<div class="contenidoformlog" >

					<div class="maintitle-cont">
						<h4 class="maintitle left">{{ "¡Estás a un paso de crear tu cuenta!" | translate }}</h4>
					</div>
					<p class="txtlogin left">{{ "Te enviamos un link a <strong>{1}</strong> para que valides tu email." | t(customer_email) }} </p>

					<div class="font-small text-center mb-4">
						<p>{{ "¿Todavía no lo recibiste?" | translate }} <span class="js-resend-validation-link btn-link">{{ "Enviar link de nuevo" | translate }}</span></p>
					</div>
					<div class="js-resend-validation-success alert alert-success" style="display:none">
						<p class="mb-0">{{ "¡El link fue enviado correctamente!" | translate }}</p>
					</div>
					<div class="js-resend-validation-error alert alert-danger" style="display:none">
						<p class="m-1">{{ "No pudimos enviar el email, intentalo de nuevo en unos minutos." | translate }}</p>
					</div>
				</div>

			</div>
		</div>
	</div>

{% else %}

	{# Register Form #}

	<section class="seccinternas">
		<div class="custom-container">
			<div class="w-layout-layout stackaccount wf-layout-layout">
				<div class="w-layout-cell accountcell">
					<div class="loginpopform w-form">
					
						{% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', form_custom_class: 'contenidoformlog', submit_custom_class: 'js-recaptcha-button btn-block loginpopbtn w-button', submit_prop: 'disabled', submit_text: 'Crear cuenta' | translate, data_store: 'account-register' } %}
							{% block form_body %}

								<div class="maintitle-cont">
                  <h2 class="maintitle left">REGISTRARME</h2>
                </div>
                <p class="txtlogin left">Completa los campos para registrarte y disfrutar de más beneficios.</p>

								{# Name input #}
								
								{% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name, input_name: 'name', input_id: 'name', input_placeholder: 'Nombre Completo *'} %}
									{% block input_form_alert %}
										{% if result.errors.name %}
															<div class="alert alert-danger">{{ 'Usamos tu nombre para identificar tus pedidos.' | translate }}</div>
													{% endif %}
									{% endblock input_form_alert %}
								{% endembed %}

								{# Email input #}

								{% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_custom_class: 'loginreg-field mail w-input', input_for: 'email', input_value: result.email, input_name: 'email', input_id: 'email', input_placeholder: 'Correo electrónico',} %}
									{% block input_form_alert %}
										{% if result.errors.email == 'exists' %}
															<div class="alert alert-danger">{{ 'Encontramos otra cuenta que ya usa este email. Intentá usando otro o iniciá sesión.' | translate }}</div>
													{% elseif result.errors.email %}
															<div class="alert alert-danger">{{ 'Necesitamos un email válido para crear tu cuenta.' | translate }}</div>
													{% endif %}
									{% endblock input_form_alert %}
								{% endembed %}

								{# Phone input #}

								{% embed "snipplets/forms/form-input.tpl" with{type_tel: true, input_custom_class: 'loginreg-field w-input', input_for: 'phone', input_value: result.phone, input_name: 'phone', input_id: 'phone', input_placeholder: 'Teléfono (opcional)'} %}
								{% endembed %}

								{# Password input #}

								{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_custom_class: 'loginreg-field pass w-input', input_for: 'password', input_name: 'password', input_id: 'password',input_placeholder: 'Contraseña'} %}
									{% block input_form_alert %}
										{% if result.errors.password == 'required' %}
															<div class="alert alert-danger">{{ 'Necesitamos una contraseña para registrarte.' | translate }}</div>
													{% endif %}
									{% endblock input_form_alert %}
								{% endembed %}

								{# Password confirm input #}

								{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_custom_class: 'loginreg-field pass w-input', input_for: 'password_confirmation', input_name: 'password_confirmation', input_id: 'password_confirmation', input_placeholder: 'Confirmar Contraseña' } %}
									{% block input_form_alert %}
										{% if result.errors.password == 'confirmation' %}
															<div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
													{% endif %}
									{% endblock input_form_alert %}
								{% endembed %}

								{# Google reCAPTCHA #}

								<div class="g-recaptcha" style="margin: auto;" data-sitekey="{{recaptchaSiteKey}}" data-callback="recaptchaCallback"></div>

								{# Aceptar Términos #}
								<label class="w-checkbox accept-tyc">
									<div class="w-checkbox-input w-checkbox-input--inputType-custom checkboxtyc"></div><input type="checkbox" name="checkbox-2" id="checkbox-2" data-name="Checkbox 2" required="" style="opacity:0;position:absolute;z-index:-1"><span class="labelcheck-tyc w-form-label" for="checkbox-2">
										<a href="#" class="tycregister-labellink">Acepto términos y condiciones</a>
									</span>
								</label>
								
							{% endblock %}
						{% endembed %}
					</div>
				</div>
			</div>
			
			<p class="mt-3 text-center" style="margin: auto;" >{{ '¿Ya tenés una cuenta?' | translate }} <strong>{{ "Iniciá sesión" | translate | a_tag(store.customer_login_url, '', 'btn-link-primary') }}</strong></p>

		</div>
	</section>
{% endif %}