<section class="loginsecc">
    <div class="customcontainer">

        <div id="w-node-abb96e4f-fbf8-7de4-d1c9-82f55b4f1269-37dc749d" class="w-layout-layout stackmicuenta wf-layout-layout">

            {# Formulario de Inicio de Sesión #}
            <div class="w-layout-cell logcell">

                <div class="secctitles">
                    <h1 class="maintitle">¡Hola! 🫰</h1>
                    <div class="linetitle"></div>
                </div>

                <div class="regtabspop w-tabs">

                    <div class="registrotabs-menu">
                        <a href="/account/register" class="logintab">
                            <div>Registrarme</div>
                        </a>
                        <a href="/account/login" class="logintab w--current">
                            <div>Tengo cuenta</div>
                        </a>
                    </div>

                    <div class="w-tab-content">
                        <div class="infotab w-tab-pane w--tab-active">
                            <div class="loginpopform w-form">
                                {% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', form_custom_class: 'contenidoformlog' , submit_custom_class: 'loginpopbtn w-button', submit_text: 'Iniciar sesión' | translate, data_store: 'account-login' } %}
                                    {% block form_body %}
                                        <p class="txtlogin">Si ya tienes una cuenta con nosotros, inicia sesión aquí</p>

                                        {% embed "snipplets/forms/form-input.tpl" with{input_for: 'email',input_placeholder: 'Correo electrónico *', input_custom_class: 'loginreg-field mail w-input' , type_email: true, input_name: 'email', input_required: true } %}
                                        {% endembed %}

                                        {% embed "snipplets/forms/form-input.tpl" with{input_for: 'password',input_placeholder: 'Contraseña *', input_custom_class: 'loginreg-field pass w-input', type_password: true, input_name: 'password', input_required: true } %}
                                        {% endembed %}
    
                                        <p class="txtlogin">*Campos requeridos</p>
                                        {% if result.invalid %}
                                            <div class="alert alert-danger">{{ 'Estos datos no son correctos. ¿Chequeaste que estén bien escritos?' | translate }}</div>
                                        {% endif %}
                                        
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

    .alert.alert-danger {
        border: 2px solid var(--darkgrey);
        box-shadow: 6px 6px 0 0 var(--darkgrey);
        margin: auto;
        margin-bottom: 15px;
        width: 90%;
        color: crimson;
    }
</style>