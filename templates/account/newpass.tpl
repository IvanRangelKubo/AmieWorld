{% set is_account_activation = action == 'account_activation' %}

<section class="seccinternas">
    <div class="custom-container">
        <div class="formin">
            <div class="w-layout-layout stackaccount wf-layout-layout">
                <div class="w-layout-cell accountcell">

                    {% if link_expired %}

                        {% set contact_links = store.whatsapp or store.phone or store.email %}
                        
                        <div class="loginpopform w-form">
                            <div class="contenidoformlog" >
                                {% if is_account_activation %}
                                    <div class="maintitle-cont">
                                        <div class="maintitle left">{{ 'El link para activar tu cuenta expiró' | translate }}</div>
                                    </div>
                                    <div class="txtlogin left" >{{ 'Contactanos para que te enviemos uno nuevo.' | translate }}</div>
                                {% else %}
                                    <div class="maintitle-cont" >
                                        <div class="maintitle left">{{ 'El link para cambiar tu contraseña expiró' | translate }}</div>
                                    </div>
                                    <div class="txtlogin left">{{ 'Ingresá tu email para recibir uno nuevo.' | translate }}</div>
                                    <a href="{{ store.customer_reset_password_url }}" class="btn-link btn-link-primary">{{ 'Ingresar email' | translate }}</a>
                                {% endif %}
                            </div>
                        </div>

                        {% if contact_links and is_account_activation %}
                            {% include "snipplets/contact-links.tpl" with {phone_and_mail_only: true} %}
                        {% endif %}

                    {% else %}
                        {% if failure %}
                            <div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
                        {% endif %}
                        <div class="loginpopform w-form">
                            {% embed "snipplets/forms/form.tpl" with{form_id: 'newpass-form', form_custom_class: 'contenidoformlog', submit_custom_class: 'loginpopbtn w-button', submit_text: (customer.password ? 'Cambiar contraseña' : 'Activar cuenta')  | translate } %}
                                {% block form_body %}
                                    <div class="maintitle-cont">
                                        <h2 class="maintitle left">NUEVA CONTRASEÑA</h2>
                                    </div>
                                    <p class="txtlogin left">Selecciona una nueva contraseña para tu cuenta!</p>

                                    {# Password input #}

                                    {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password',input_placeholder: 'Contraseña', input_custom_class: 'loginreg-field pass w-input', input_name: 'password', input_id: 'password' } %}
                                    {% endembed %}

                                    {# Password confirm input #}

                                    {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password_confirm',input_placeholder: 'Confirma tu contraseña', input_custom_class: 'loginreg-field pass w-input', input_name: 'password_confirm', input_id: 'password_confirm' } %}
                                    {% endembed %}
                                    
                                {% endblock %}
                            {% endembed %}
                        </div>
                    {% endif %}
                </div>
            </div>
        </div>

    </div>
</section>