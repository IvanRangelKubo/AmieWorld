
<section class="loginsecc">
    <div class="customcontainer">
        
            <div id="w-node-abb96e4f-fbf8-7de4-d1c9-82f55b4f1269-37dc749d" class="w-layout-layout stackmicuenta wf-layout-layout">

                <div class="w-layout-cell logcell">

                    <div class="secctitles">
                        <h1 class="maintitle">¡Recupera tu contraseña! 🫰</h1>
                        <div class="linetitle"></div>
                    </div>

                    {% embed "snipplets/forms/form.tpl" with{form_id: 'resetpass-form',form_custom_class: 'contenidoformlog',submit_custom_class: 'loginpopbtn w-button', submit_text: 'Enviar email' | translate } %}
                        {% block form_body %}

                            <p class="txtlogin">{{ 'Vamos a enviarte un email para que puedas cambiar tu contraseña.' | translate }}</p>

                            {# Email input #}
                            {% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_for: 'email', input_placeholder: 'Correo electrónico', input_custom_class: 'loginreg-field mail w-input' , input_value: email, input_name: 'email', input_id: 'email', input_required: true } %}
                                {% block input_form_alert %}
                                    {% if failure %}
                                        <div class="alert alert-danger">{{ 'No encontramos ninguna cuenta registrada con este email. Intentalo nuevamente chequeando que esté bien escrito.' | translate }}</div>
                                    {% endif %}
                                {% endblock input_form_alert %}
                            {% endembed %}
                            
                        {% endblock %}
                    {% endembed %}

                    {% if success %}
                        <div class="alert alert-success">{{ '¡Listo! Te enviamos un email a {1}' | translate(email) }}</div>
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
        margin-top: 0;
    }

    .alert.alert-danger {
        border: 2px solid var(--darkgrey);
        box-shadow: 6px 6px 0 0 var(--darkgrey);
        margin: auto;
        margin-bottom: 15px;
        width: 90%;
        color: crimson;
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