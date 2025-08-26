
{% set is_order_cancellation_without_id = params.order_cancellation_without_id == 'true' %}
<section class="contact-page">

	<div class="seccmicuenta">
		<div class="customcontainer">

			<div class="secctitles internas">
        <h1 class="maintitle internas">Escríbenos ✏️</h1>
        <div class="linetitle"></div>
      </div>
			<div class="loginpopform contacto w-form">
				{% embed "snipplets/forms/form.tpl" with{form_id: 'contact-form', form_custom_class: 'js-winnie-pooh-form contenidoformlog', submit_custom_class: 'loginpopbtn w-button', form_action: '/winnie-pooh', submit_name: 'contact', submit_text: 'Enviar mensaje' | translate, data_store: 'contact-form' } %}
					{% block form_body %}

						{# Hidden inputs used to send attributes #}
						<div class="winnie-pooh hidden">
							<label for="winnie-pooh">{{ "No completar este campo" | translate }}:</label>
							<input type="text" id="winnie-pooh" name="winnie-pooh">
						</div>
						<input type="hidden" value="{{ product.id }}" name="product"/>
						<input type="hidden" name="type" value="contact" />
						<input type="hidden" name="message"/>

						<p class="txtlogin">Para el equipo de amie world tú opinión es importante, si tienes alguna duda con tu compra o nuestros productos puedes ponerte en contacto con nosotros a través del siguiente formulario.</p>
					

						<div id="w-node-_81321b25-7b08-2026-9060-3793a1b18af7-d35ed2d6" class="w-layout-layout stackdirecciones wf-layout-layout">
							<div class="w-layout-cell">
								
								{# Name input #}
								{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'Nombre Completo*', input_for: 'name', type_text: true, input_name: 'name', input_id: 'name', input_required: true } %}
								{% endembed %}

								{# Email input #}
								{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'Correo electrónico (con el que realizaste la compra)',  input_for: 'email', type_email: true, input_name: 'email', input_id: 'email' } %}
								{% endembed %}

								{# Phone input #}
								{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'Teléfono*',  input_for: 'phone', type_tel: true, input_name: 'phone', input_id: 'phone', input_required: true } %}
								{% endembed %}

								{# Order input #}
								{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'No. de Pedido de Compra',  input_for: 'order', type_text: true, input_name: 'order', input_id: 'order' } %}
								{% endembed %}

							</div>
							<div class="w-layout-cell">

								{# Help input #}
								{% embed "snipplets/forms/form-select.tpl" with{select_for: 'help',select_custom_class: 'loginreg-field w-select', select_name: 'help', select_id: 'help' } %}
									{% block select_options %}
										<option value="">Selecciona el motivo de contacto</option>
										<option value="Estatus de mi pedido">Estatus de mi pedido</option>
										<option value="Dudas de los productos">Dudas de los productos</option>
										<option value="No recibí mi pedido">No recibí mi pedido</option>
										<option value="Venta Mayorista">Venta Mayorista</option>
										<option value="otro">Otro</option>
									{% endblock select_options %}
								{% endembed %}

								{# Message textarea #}
								{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field txtarea w-input', input_placeholder: 'Mensaje', text_area: true, input_for: 'custom_message', input_name: 'custom_message', input_id: 'custom_message', input_rows: '7' } %}
								{% endembed %}
								
							</div>
						</div>

						<p class="txtlogin">*Campos requeridos</p>
						<label class="w-checkbox accept-tyc">
							<div class="w-checkbox-input w-checkbox-input--inputType-custom termscheckbopx"></div>
							<input type="checkbox" name="checkbox-2" id="checkbox-2" data-name="Checkbox 2" required="" style="opacity:0;position:absolute;z-index:-1" oninvalid="this.setCustomValidity('Marque esta casilla si desea continuar')" oninput="this.setCustomValidity('')" >
							<span class="labelcheck-tyc-2 w-form-label" for="checkbox-2">
								<a href="/aviso-de-privacidad" class="tycregister-labellink">Acepto Aviso de Privacidad</a>
							</span>
						</label>

					{% endblock %}
				{% endembed %}
			</div>


			<!-- Notificaciones de usuario -->
			{% if contact %}
				{% if contact.success %}
						<div class="alert alert-success" data-component="contact-success-message">{{ "¡Gracias por contactarnos! Vamos a responderte apenas veamos tu mensaje." | translate }}</div>
				{% else %}
					<div class="alert alert-danger">{{ "Necesitamos tu nombre y un email para poder responderte." | translate }}</div>
				{% endif %}
			{% endif %}
			<!-- Notificaciones de usuario -->

		</div>
	</div>
	<script>
			document.addEventListener('DOMContentLoaded', function () {
			const form = document.querySelector('#contact-form');
			const helpInput = document.querySelector('[name="help"]');
			const orderInput = document.querySelector('[name="order"]');
			const customMessageInput = document.querySelector('[name="custom_message"]');
			const messageInput = document.querySelector('[name="message"]');
			if (form && helpInput && orderInput && customMessageInput && messageInput) {
				form.addEventListener('submit', function (event) {
					const fields = [
						{ input: helpInput, label: 'Help' },
						{ input: orderInput, label: 'Order' },
						{ input: customMessageInput, label: 'Message' }
					];

					const message = fields
						.filter(field => field.input.value !== '')
						.map(field => `${field.label}: ${field.input.value.trim()}`)
						.join(',  ');

					messageInput.value = message;
				});
			}
		});
	</script>

	<style>
		.form-group {
				margin: 0px;
		}

		.form-group .form-select-icon {
			display: none;
		}
		select.form-select.loginreg-field.w-select {
				appearance: auto !important;
		}

		input.btn.btn-primary.loginpopbtn.w-button {
				letter-spacing: normal;
				text-transform: none;
		}

		.alert.alert-success {
				margin-top: 25px;
				border: 1px solid var(--darkgrey);
				box-shadow: 3px 3px 0 0 var(--darkgrey);
		}
	</style>
</section>