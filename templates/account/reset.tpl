
<section class="seccinternas">
    <div class="custom-container">
        <div class="formin" >
            <div class="w-layout-layout stackaccount wf-layout-layout">

                <div class="w-layout-cell accountcell">

                    {% if success %}
                        <div class="alert alert-success">{{ '¡Listo! Te enviamos un email a {1}' | translate(email) }}</div>
                    {% endif %}

                    {% embed "snipplets/forms/form.tpl" with{form_id: 'resetpass-form',form_custom_class: 'contenidoformlog',submit_custom_class: 'loginpopbtn w-button', submit_text: 'Enviar email' | translate } %}
                        {% block form_body %}

                            <div class="maintitle-cont">
                                <h2 class="maintitle left">RECUPERAR CONTRASEÑA</h2>
                            </div>
                            <p class="txtlogin left">{{ 'Vamos a enviarte un email para que puedas cambiar tu contraseña.' | translate }}</p>

                            {# Email input #}

                            {% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_for: 'email', input_placeholder: 'Correo electrónico', input_custom_class: 'loginreg-field mail w-input' , input_value: email, input_name: 'email', input_id: 'email' } %}
                                {% block input_form_alert %}
                                    {% if failure %}
                                        <div class="alert alert-danger">{{ 'No encontramos ninguna cuenta registrada con este email. Intentalo nuevamente chequeando que esté bien escrito.' | translate }}</div>
                                    {% endif %}
                                {% endblock input_form_alert %}
                            {% endembed %}
                            
                        {% endblock %}
                    {% endembed %}
                </div>

            </div>
        </div>
    </div>
</section>