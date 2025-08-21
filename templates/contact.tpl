{% embed "snipplets/page-header.tpl" %}
	{% if is_order_cancellation %}
		{% set form_title = "Pedí la cancelación de tu última compra" | translate %}
	{% else %}
		{% set form_title = "Contacto" | translate %}
	{% endif %}
	{% block page_header_text %}{{ form_title }}{% endblock page_header_text %}
{% endembed %}

{% set has_contact_info = store.whatsapp or store.phone or store.email or store.address or store.blog %}
{% set is_order_cancellation_without_id = params.order_cancellation_without_id == 'true' %}
<section class="contact-page">
	<div class="row justify-content-md-center">
		<div class="col-md-8 text-center">
			{% if is_order_cancellation %}
				<p data-component="order-cancellation-disclaimer">{{ "Si te arrepentiste, podés pedir la cancelación enviando este formulario. Tenés como máximo hasta 10 días corridos desde que recibiste el producto." | translate }} </p>
				<a class="btn-link" href="{{ status_page_url }}">{{'Ver detalle de la compra >' | translate}}</a>
				{% if has_contact_info %}
					<p class="mt-4 mb-3">{{ 'Si tenés problemas con otra compra, contactanos:' | translate }}</p>
				{% endif %}
			{% endif %}
			{% if store.contact_intro %}
				<p>{{ store.contact_intro }}</p>
			{% endif %}	
			{% if has_contact_info %}
				{% include "snipplets/contact-links.tpl" %}
			{% endif %}
		</div>
	</div>
	<div class="seccinternas">
		<div class="custom-container">
			{% if product %}  
				<div> 
					<p>{{ "Usted está consultando por el siguiente producto:" | translate }} </br> {{ product.name | a_tag(product.url) }}</p>
					<img src="{{ product.featured_image | product_image_url('thumb') }}" title="{{ product.name }}" alt="{{ product.name }}" />
				</div>
			{% endif %}	
			{% if contact %}
				{% if contact.success %}
					{% if is_order_cancellation %}
						<div class="alert alert-success" data-component="order-cancellation-success-message">
							{{ "¡Tu pedido de cancelación fue enviado!" | translate }} 
							<br>
							{{ "Vamos a ponernos en contacto con vos apenas veamos tu mensaje." | translate }}
							<br> 
							<strong>{{ "Tu código de trámite es" | translate }} #{{ last_order_id }}</strong>
						</div>
					{% else %}
						<div class="alert alert-success" data-component="contact-success-message">{{ "¡Gracias por contactarnos! Vamos a responderte apenas veamos tu mensaje." | translate }}</div>
					{% endif %}
				{% else %}
					<div class="alert alert-danger">{{ "Necesitamos tu nombre y un email para poder responderte." | translate }}</div>
				{% endif %}
			{% endif %}	

			{% if is_order_cancellation_without_id %}
				<p class="mb-3" data-component="order-cancellation-disclaimer">{{ "Si te arrepentiste de una compra, podés pedir la cancelación enviando este formulario <strong>con tu número de orden.</strong> Tenés como máximo hasta 10 días corridos desde que recibiste el producto." | translate }}</p>
			{% endif %}
					<div id="w-node-_5bab357d-2bfc-668a-dbc6-ac12a54b01b7-175a39ff" class="w-layout-layout contactostack wf-layout-layout">
						<div id="w-node-_5bab357d-2bfc-668a-dbc6-ac12a54b01b8-175a39ff" class="w-layout-cell imgcontform"></div>
							<div id="w-node-_5bab357d-2bfc-668a-dbc6-ac12a54b01b9-175a39ff" class="w-layout-cell cell">
								<div class="maintitle-cont">
									<h2 class="maintitle left"><span class="redtxttitle">ESCRÍBENOS</span></h2>
								</div>
								<p class="txtlogin contacto">Si tienes alguna duda sobre tus productos, pedido, comentarios o sugerencias escríbenos a través del siguiente formulario.</p>
									{% embed "snipplets/forms/form.tpl" with{form_id: 'contact-form', form_custom_class: 'js-winnie-pooh-form ', submit_custom_class: 'loginpopbtn contacto w-button', form_action: '/winnie-pooh', submit_name: 'contact', submit_text: 'Enviar mensaje' | translate, data_store: 'contact-form' } %}
										{% block form_body %}
											{# Hidden inputs used to send attributes #}
											<div class="winnie-pooh hidden">
												<label for="winnie-pooh">{{ "No completar este campo" | translate }}:</label>
												<input type="text" id="winnie-pooh" name="winnie-pooh">
											</div>
											
											<input type="hidden" value="{{ product.id }}" name="product"/>
											{% if is_order_cancellation or is_order_cancellation_without_id %}
												<input type="hidden" name="type" value="order_cancellation" />
											{% else %}
												<input type="hidden" name="type" value="contact" />
											{% endif %}
											<div id="w-node-ce49663a-fd02-0835-a529-5453f7eba3e2-175a39ff" class="w-layout-layout quick-stack wf-layout-layout">
												<div id="w-node-ce49663a-fd02-0835-a529-5453f7eba3e3-175a39ff" class="w-layout-cell">
													{# Name input #}

													{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_label_custom_class: 'contactolabel', input_for: 'name', type_text: true, input_name: 'name', input_id: 'name', input_label_text: 'Nombre' | translate } %}
													{% endembed %}

													{# Phone input #}

													{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_label_custom_class: 'contactolabel', input_for: 'phone', type_tel: true, input_name: 'phone', input_id: 'phone', input_label_text: 'Teléfono' | translate } %}
													{% endembed %}

													{# Help input #}

													{% embed "snipplets/forms/form-select.tpl" with{select_for: 'help',select_custom_class: 'loginreg-field w-select', select_name: 'help',select_label_custom_class: 'contactolabel', select_id: 'help', select_label_name: '¿Cómo podemos ayudarte?', select_label: 'País' | translate } %}
														{% block select_options %}
															<option value="">Selecciona una opción</option>
															<option value="Status de mi pedido">Status de mi pedido</option>
															<option value="Pago de mi pedido">Pago de mi pedido</option>
															<option value="Cambio de un producto">Cambio de un producto</option>
															<option value="Devolución de un producto">Devolución de un producto</option>
															<option value="Problema con mi pedido">Problema con mi pedido</option>
														{% endblock select_options %}
                          {% endembed %}
												</div>
												<div id="w-node-ce49663a-fd02-0835-a529-5453f7eba3e3-175a39ff" class="w-layout-cell">
													{% if not is_order_cancellation %}
														{# Email input #}

														{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_label_custom_class: 'contactolabel', input_for: 'email', type_email: true, input_name: 'email', input_id: 'email', input_label_text: 'Email' | translate } %}
														{% endembed %}

														{# Country input #}

														{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_label_custom_class: 'contactolabel', input_for: 'country', type_text: true, input_name: 'country', input_id: 'country', input_label_text: 'Ciudad/estado' | translate } %}
														{% endembed %}

														{# Email input #}

														{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_label_custom_class: 'contactolabel', input_for: 'order', type_text: true, input_name: 'order', input_id: 'order', input_label_text: 'Número de pedido (solo si aplica)' | translate } %}
														{% endembed %}


													{% endif %}
												</div>
											</div>
											{% if not is_order_cancellation %}
												{# Message textarea #}

												{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'txtarea-contacto w-input', input_label_custom_class: 'contactolabel',text_area: true, input_for: 'custom_message', input_name: 'custom_message', input_id: 'custom_message', input_rows: '7', input_label_text: 'Mensaje' | translate } %}
												{% endembed %}

												<input type="hidden" name="message"/>
											{% endif %}
										{% endblock %}
									{% endembed %}
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
			document.addEventListener('DOMContentLoaded', function () {
			const form = document.querySelector('#contact-form');
			const countryInput = document.querySelector('[name="country"]');
			const helpInput = document.querySelector('[name="help"]');
			const orderInput = document.querySelector('[name="order"]');
			const customMessageInput = document.querySelector('[name="custom_message"]');
			const messageInput = document.querySelector('[name="message"]');
			if (form && countryInput && helpInput && orderInput && customMessageInput && messageInput) {
				form.addEventListener('submit', function (event) {
					const fields = [
						{ input: countryInput, label: 'Country' },
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
</section>