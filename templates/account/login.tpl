<section class="seccinternas">
    <div class="custom-container">
        <div class="w-layout-layout stackaccount wf-layout-layout">

            {# Formulario de Inicio de Sesión #}
            <div class="w-layout-cell accountcell">
                <div class="loginpopform w-form">
                    {% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', form_custom_class: 'contenidoformlog' , submit_custom_class: 'loginpopbtn w-button', submit_text: 'Iniciar sesión' | translate, data_store: 'account-login' } %}
                        {% block form_body %}
                            <div class="maintitle-cont">
                                <h2 class="maintitle left">INICIAR SESIÓN</h2>
                            </div>
                            <p class="txtlogin left">Si ya tienes una cuenta, inicia sesión aquí.</p>

                            {% embed "snipplets/forms/form-input.tpl" with{input_for: 'email',input_placeholder: 'Correo electrónico', input_custom_class: 'loginreg-field mail w-input' , type_email: true, input_name: 'email' } %}
                            {% endembed %}

                            {% embed "snipplets/forms/form-input.tpl" with{input_for: 'password',input_placeholder: 'Contraseña', input_custom_class: 'loginreg-field pass w-input', type_password: true, input_name: 'password' } %}
                            {% endembed %}

                            <a href="/account/reset" class="frgtpassword">{{ '¿Olvidaste tu contraseña?' | translate }}</a>

                            {% if result.invalid %}
                                <div class="alert alert-danger">{{ 'Estos datos no son correctos. ¿Chequeaste que estén bien escritos?' | translate }}</div>
                            {% endif %}
                        {% endblock %}
                    {% endembed %}
                </div>
            </div>
            
        </div>

        <p class="mt-3 text-center" style="margin: auto;" >{{ '¿Aun no tenés una cuenta?' | translate }} <strong>{{ "Registrarme" | translate | a_tag(store.customer_register_url, '', 'btn-link-primary') }}</strong></p>

    </div>
</section>
