{% set is_account_activation = action == 'account_activation' %}

<section class="loginsecc">
    <div class="customcontainer">
        
            <div id="w-node-abb96e4f-fbf8-7de4-d1c9-82f55b4f1269-37dc749d" class="w-layout-layout stackmicuenta wf-layout-layout">
                
                <div class="w-layout-cell logcell">

                    {% if link_expired %}

                        {% set contact_links = store.whatsapp or store.phone or store.email %}

                        <div class="secctitles">
                            <h1 class="maintitle">¡{{ 'El link para activar tu cuenta expiró' | translate }}!</h1>
                            <div class="linetitle"></div>
                        </div>
                        
                        <div class="loginpopform w-form">
                            <div class="contenidoformlog" >
                                {% if is_account_activation %}
                                    <div class="txtlogin" >{{ 'Contactanos para que te enviemos uno nuevo.' | translate }}</div>
                                {% else %}
                                    <div class="txtlogin">{{ 'Ingresá tu email para recibir uno nuevo.' | translate }}</div>
                                    <a href="{{ store.customer_reset_password_url }}" class="btn-link btn-link-primary loginpopbtn w-button">{{ 'Ingresar email' | translate }}</a>
                                {% endif %}
                            </div>
                        </div>

                    {% else %}

                        <div class="secctitles">
                            <h1 class="maintitle">¡Crea tu nueva contraseña! 🫰</h1>
                            <div class="linetitle"></div>
                        </div>

                        <div class="loginpopform w-form">

                            {% embed "snipplets/forms/form.tpl" with{form_id: 'newpass-form', form_custom_class: 'contenidoformlog', submit_custom_class: 'loginpopbtn w-button', submit_text: (customer.password ? 'Cambiar contraseña' : 'Activar cuenta')  | translate } %}
                                {% block form_body %}

                                    <p class="txtlogin">Selecciona una nueva contraseña para tu cuenta!</p>

                                    {# Password input #}

                                    {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password',input_placeholder: 'Contraseña', input_custom_class: 'loginreg-field pass w-input', input_name: 'password', input_id: 'password', input_required: true } %}
                                    {% endembed %}

                                    {# Password confirm input #}

                                    {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password_confirm',input_placeholder: 'Confirma tu contraseña', input_custom_class: 'loginreg-field pass w-input', input_name: 'password_confirm', input_id: 'password_confirm', input_required: true } %}
                                    {% endembed %}
                                    
                                {% endblock %}
                                
                            {% endembed %}
                        </div>

                        {% if failure %}
                            <div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
                        {% endif %}

                    {% endif %}
                </div>

                <div class="w-layout-cell imglogincell">
                    <div class="loginimg"></div>
                </div>

            </div>

    </div>
</section>

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

    .alert.alert-success {
        border: 2px solid var(--darkgrey);
        box-shadow: 6px 6px 0 0 var(--darkgrey);
        margin: auto;
        width: 90%;
	}
</style>