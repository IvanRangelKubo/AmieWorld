{% set templateTitle = 'Agregar dirección 🏠' %}
{% if address.name %}
    {% set templateTitle = 'Editar dirección 🏠' %}
{% endif %}

<section class="seccmicuenta">
    <div class="customcontainer">

        <div class="contmicuenta">

            <div class="secctitles internas">
                <h1 class="maintitle internas">{{ templateTitle }}</h1>
                <div class="linetitle"></div>
            </div>

            <div class="contbtncuenta">
                <a href="/account/addresses" class="btnmicuenta w-button">Cancelar</a>
            </div>

            
            <div class="loginpopform">
                    {% embed "snipplets/forms/form.tpl" with{form_id: 'address-form', form_custom_class: 'contenidoformlog direcciones', submit_custom_class: 'loginpopbtn w-button', submit_text: 'Guardar cambios' | translate } %}
                        {% block form_body %}

                            <p class="txtlogin">Completa los campos para agregar una nueva dirección</p>

                            <div id="w-node-_81321b25-7b08-2026-9060-3793a1b18af7-9d49e32e" class="w-layout-layout stackdirecciones wf-layout-layout">
                                
                                <div class="w-layout-cell">
                                    {# Name input #}                
                                    {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name | default(address.name),  input_name: 'name', input_id: 'name', input_placeholder: 'Nombre(Alias)*' | translate, input_required: true } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.name %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu nombre para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                                <div class="w-layout-cell">
                                    {# Address input #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_text: true, input_for: 'address',input_custom_class: 'loginreg-field w-input', input_value: result.address | default(address.address),  input_name: 'address', input_id: 'address', input_placeholder: 'Direccion*', input_required: true  } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.address %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu dirección para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                            </div>

                            <div id="w-node-_81321b25-7b08-2026-9060-3793a1b18af7-9d49e32e" class="w-layout-layout stackdirecciones wf-layout-layout">
                                
                                <div class="w-layout-cell">
                                    {# Address Zipcode #}    
                                    {% embed "snipplets/forms/form-input.tpl" with{type_tel: true,input_custom_class: 'loginreg-field w-input', input_for: 'zipcode', input_value: result.zipcode | default(address.zipcode), input_name: 'zipcode', input_id: 'zipcode', input_placeholder: 'Codigo Postal*' | translate, input_required: true } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.zipcode %}
                                                <div class="alert alert-danger">{{ 'Debes ingresar tu código postal' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                                <div class="w-layout-cell">
                                    {# Address City #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'city', input_value: result.city | default(address.city), input_name: 'city', input_id: 'city', input_placeholder: 'Ciudad*' | translate, input_required: true } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.city %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu ciudad para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                            </div>

                            <div id="w-node-_81321b25-7b08-2026-9060-3793a1b18af7-9d49e32e" class="w-layout-layout stackdirecciones wf-layout-layout">
                                
                                <div class="w-layout-cell">
                                    {# Address Province #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'province', input_value: result.province | default(address.province), input_name: 'province', input_id: 'province', input_placeholder: 'Estado*' | translate, input_required: true } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.province %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu provincia para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                                <div class="w-layout-cell">
                                    {# Address Country #}
                                    {% embed "snipplets/forms/form-select.tpl" with{select_for: 'country', select_custom_class: 'loginreg-field w-select', select_name: 'country', select_id: 'country' } %}
                                        {% block select_options %}
                                            {{ country_options }}
                                        {% endblock select_options %}
                                        {% block input_form_alert %}
                                            {% if result.errors.country %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu país para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                            </div>

                            <div id="w-node-_81321b25-7b08-2026-9060-3793a1b18af7-9d49e32e" class="w-layout-layout stackdirecciones wf-layout-layout">
                                
                                <div class="w-layout-cell">
                                    {# Phone input #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_tel: true,input_custom_class: 'loginreg-field w-input', input_for: 'phone', input_value: result.phone | default(address.phone), input_name: 'phone', input_id: 'phone', input_placeholder: 'Telefono*' | translate, input_required: true } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.phone %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu teléfono para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                            </div>

                            <p class="txtlogin">*Campos requeridos</p>
    
                        {% endblock %}
                    {% endembed %}
            </div>
            
        </div>

    </div>
</section>

<style>
   .form-group {
        margin-bottom: 0;
    }

        .form-toggle-eye {
        top: 9px !important;
        right: 36px !important;
    }

    .contenidoformlog {
        margin-top: 0px;
        padding: 0px;
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

    .form-group .form-select-icon {
        display: none;
    }
    select.form-select.loginreg-field.w-select {
            appearance: auto !important;
    }

    select#province {
    border: 1px solid var(--darkgrey);
    color: var(--darkgrey);
    background-color: #fff;
    border-radius: 0;
    width: 100%;
    height: 50px;
    margin-bottom: 15px;
    padding: 10px;
    font-family: Montserrat, sans-serif;
    font-size: 14px;
    font-weight: 400;
    line-height: 18px;
}
    
</style>