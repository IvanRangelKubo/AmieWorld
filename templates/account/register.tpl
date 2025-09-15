
{# Account validation #}
{% if account_validation == 'pending' %}

	<section class="loginsecc">
		<div class="customcontainer">

			<div id="w-node-abb96e4f-fbf8-7de4-d1c9-82f55b4f1269-37dc749d" class="w-layout-layout stackmicuenta wf-layout-layout">

				<div class="w-layout-cell logcell">

					<div class="secctitles">
							<h1 class="maintitle">{{ "¡Estás a un paso de crear tu cuenta! 🫰" | translate }}</h1>
							<div class="linetitle"></div>
					</div>

					<p class="txtlogin">{{ "Te enviamos un link a <strong>{1}</strong> para que valides tu email." | t(customer_email) }} </p>

					<div class="font-small mb-4">
						<p class="txtlogin" >{{ "¿Todavía no lo recibiste?" | translate }} <span class="js-resend-validation-link btn-link">{{ "Enviar link de nuevo" | translate }}</span></p>
					</div>
					<div class="js-resend-validation-success alert alert-success" style="display:none">
						<p class="txtlogin">{{ "¡El link fue enviado correctamente!" | translate }}</p>
					</div>
					<div class="js-resend-validation-error alert alert-danger" style="display:none">
						<p class="txtlogin">{{ "No pudimos enviar el email, intentalo de nuevo en unos minutos." | translate }}</p>
					</div>

				</div>

				<div class="w-layout-cell imglogincell">
					<div class="loginimg"></div>
				</div>

			</div>

		</div>
	</div>

{% else %}

	{# Register Form #}

	<section class="loginsecc">
		<div class="customcontainer">

			<div id="w-node-abb96e4f-fbf8-7de4-d1c9-82f55b4f1269-37dc749d" class="w-layout-layout stackmicuenta wf-layout-layout">
				
				<div class="w-layout-cell logcell">

					<div class="secctitles">
						<h1 class="maintitle">¡Hola! 🫰</h1>
						<div class="linetitle"></div>
					</div>

					<div class="regtabspop w-tabs">

							<div class="registrotabs-menu">
									<a href="/account/register" class="logintab w--current">
											<div>Registrarme</div>
									</a>
									<a href="/account/login" class="logintab">
											<div>Tengo cuenta</div>
									</a>
							</div>

							<div class="w-tab-content">
									<div class="infotab w-tab-pane w--tab-active">
											<div class="loginpopform w-form">
												{% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', form_custom_class: 'contenidoformlog', submit_custom_class: 'js-recaptcha-button btn-block loginpopbtn w-button', submit_prop: 'disabled', submit_text: 'Crear cuenta' | translate, data_store: 'account-register' } %}
													{% block form_body %}

														<p class="txtlogin">Si aun no eres parte de la comunidad de amie world, ¡qué esperas para registrarte!  Recibe promociones y descuentos especiales, tips y notificaciones de nuevos productos y muchos beneficios más. </p>

														{# Name input #}
														
														{% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name, input_name: 'name', input_id: 'name', input_placeholder: 'Nombre Completo *', input_required: true} %}
															{% block input_form_alert %}
																{% if result.errors.name %}
																					<div class="alert alert-danger">{{ 'Usamos tu nombre para identificar tus pedidos.' | translate }}</div>
																			{% endif %}
															{% endblock input_form_alert %}
														{% endembed %}

														{# Email input #}

														{% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_custom_class: 'loginreg-field mail w-input', input_for: 'email', input_value: result.email, input_name: 'email', input_id: 'email', input_placeholder: 'Correo electrónico*', input_required: true} %}
															{% block input_form_alert %}
																{% if result.errors.email == 'exists' %}
																					<div class="alert alert-danger">{{ 'Encontramos otra cuenta que ya usa este email. Intentá usando otro o iniciá sesión.' | translate }}</div>
																			{% elseif result.errors.email %}
																					<div class="alert alert-danger">{{ 'Necesitamos un email válido para crear tu cuenta.' | translate }}</div>
																			{% endif %}
															{% endblock input_form_alert %}
														{% endembed %}

														{# Password input #}

														{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_custom_class: 'loginreg-field pass w-input', input_for: 'password', input_name: 'password', input_id: 'password',input_placeholder: 'Contraseña*', input_required: true} %}
															{% block input_form_alert %}
																{% if result.errors.password == 'required' %}
																					<div class="alert alert-danger">{{ 'Necesitamos una contraseña para registrarte.' | translate }}</div>
																			{% endif %}
															{% endblock input_form_alert %}
														{% endembed %}

														{# Password confirm input #}

														{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_custom_class: 'loginreg-field pass w-input', input_for: 'password_confirmation', input_name: 'password_confirmation', input_id: 'password_confirmation', input_placeholder: 'Confirmar contraseña*', input_required: true } %}
															{% block input_form_alert %}
																{% if result.errors.password == 'confirmation' %}
																					<div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
																			{% endif %}
															{% endblock input_form_alert %}
														{% endembed %}

														<p class="txtlogin">*Campos requeridos</p>
														{# Aceptar Términos #}
														<label class="w-checkbox accept-tyc-2">
															<div class="w-checkbox-input w-checkbox-input--inputType-custom termscheckbopx"></div>
															<input type="checkbox" name="Checkbox" id="Checkbox" data-name="Checkbox" required="" style="opacity:0;position:absolute;z-index:-1"><span class="labelcheck-tyc w-form-label" for="Checkbox" oninvalid="this.setCustomValidity('Marque esta casilla si desea continuar')" oninput="this.setCustomValidity('')" >
																<a href="/terminos-y-condiciones" class="tycregister-labellink">Acepto términos y condiciones</a>
															</span>
														</label>
														
													{% endblock %}
												{% endembed %}
											</div>
									</div>
									
							</div>

					</div>
				</div>

				<div class="w-layout-cell imglogincell">
					<div class="loginimg"></div>
				</div>
			</div>

		</div>
	</section>


{% endif %}


<style>
   .form-group {
        margin-bottom: 0;
    } 

    .btn.btn-primary.loginpopbtn.w-button {
        letter-spacing: normal;
        text-transform: none;
    }

    .form-toggle-eye {
        top: 9px !important;
        right: 36px !important;
    }

		.contenidoformlog {
			margin-top: 0px;
			padding: 0px;
	}

	.alert.alert-danger {
    border: 2px solid var(--darkgrey);
    box-shadow: 6px 6px 0 0 var(--darkgrey);
    margin: auto;
    margin-bottom: 15px;
    width: 90%;
    color: crimson;
	}

	.js-resend-validation-success.alert.alert-success {
    border: 2px solid var(--darkgrey);
    box-shadow: 6px 6px 0 0 var(--darkgrey);
    margin: auto;
    width: 90%;
	}
</style>