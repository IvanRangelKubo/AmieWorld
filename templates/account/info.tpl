{# Update account info form #}

<section class="seccinternas">
    <div class="custom-container">
        <div class="formin">
            <div class="w-layout-layout stackaccount wf-layout-layout">
                <div class="w-layout-cell accountcell">
                    
                        {% embed "snipplets/forms/form.tpl" with{form_id: 'info-form',form_custom_class: 'contenidoformlog', submit_custom_class: 'loginpopbtn w-button', submit_text: 'Guardar cambios' | translate } %}
                            {% block form_body %}

                                <div class="maintitle-cont">
                                    <h2 class="maintitle left">TU INFORMACIÓN</h2>
                                </div>
                                <p class="txtlogin left">Aqui puedes editar tus datos personales y de contacto</p>

                                {# Name input #}
                                
                                {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_placeholder: 'Nombre', input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name | default(customer.name), input_name: 'name', input_id: 'name', input_label_text: 'Nombre' | translate, input_label_custom_class: 'contactolabel' } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.name %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu nombre para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}

                                {# Email input #}

                                {% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_for: 'email',input_custom_class: 'loginreg-field email w-input', input_value: result.email | default(customer.email), input_name: 'email', input_id: 'email', input_label_text: 'Email' | translate, input_label_custom_class: 'contactolabel' } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.email == 'exists' %}
                                            <div class="alert alert-danger">{{ 'Encontramos otra cuenta que ya usa este email. Intentá usando otro.' | translate }}</div>
                                        {% elseif result.errors.email %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu email para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}

                                {# Phone input #}

                                {% embed "snipplets/forms/form-input.tpl" with{type_tel: true, input_for: 'phone',input_custom_class: 'loginreg-field w-input', input_value: result.phone | default(customer.phone), input_name: 'phone', input_id: 'phone', input_label_text: 'Teléfono' | translate, input_label_custom_class: 'contactolabel' } %}
                                {% endembed %}
                                
                            {% endblock %}
                        {% endembed %}
                 
                </div>
            </div>
        </div>
    </div>
</section>