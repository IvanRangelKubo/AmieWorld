<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:og="http://opengraphprotocol.org/schema/">
    <head>
        <link rel="preconnect" href="{{ store_resource_hints }}" />
        <link rel="dns-prefetch" href="{{ store_resource_hints }}" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>{{ page_title }}</title>
        <meta name="description" content="{{ page_description }}" />
        
        {{ component('social-meta') }}

        {#/*============================================================================
            #CSS and fonts
        ==============================================================================*/#}

        <style>
            {# Font families #}

            {% if params.preview %}

                {# If page is loaded from customization page on the admin, load all fonts #}

                @import url('https://fonts.googleapis.com/css?family=Muli:400,700|Lato:400,700|Open+Sans:400,700|Lora:400,700|Slabo+27px|Playfair+Display:400,700|Droid+Sans:400,700|Poppins:400,700,900|Niramit:400,700&display=swap');

            {% else %}

                {# If page is NOT loaded from customization only load saved fonts #}

                {# Get only the saved fonts on settings #}

                @import url('{{ [settings.font_headings, settings.font_rest] | google_fonts_url('300, 400, 700') | raw }}');

            {% endif %}


            {% include "static/css/style-critical.tpl" %}
        </style>

        {# Critical CSS needed to show first elements of store while CSS async is loading #}

        <style>
            {% include "static/css/style-critical.tpl" %}
        </style>


        {# Colors and fonts used from settings.txt and defined on theme customization #}

        {{ 'css/style-colors.scss.tpl' | static_url | static_inline }}

        {# Load async styling not mandatory for first meaningfull paint #}

        <link rel="stylesheet" href="{{ 'css/style-async.scss.tpl' | static_url }}" media="print" onload="this.media='all'">
        <link rel="stylesheet" href="{{ 'css/personalized3.css' | static_url }}">

        {# Loads custom CSS added from Advanced Settings on the admin´s theme customization screen #}

        <style>
            {{ settings.css_code | raw }}
        </style>

        {#/*============================================================================
            #Javascript: Needed before HTML loads
        ==============================================================================*/#}

        {# Defines if async JS will be used by using script_tag(true) #}

        {% set async_js = true %}

        {# Defines the usage of jquery loaded below, if nojquery = true is deleted it will fallback to jquery 1.5 #}

        {% set nojquery = true %}

        {# Jquery async by adding script_tag(true) #}

        {% if load_jquery %}

            {{ '//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js' | script_tag(true) }}

        {% endif %}

        {# Loads private Tienda Nube JS #}

        {% head_content %}

        {# Structured data to provide information for Google about the page content #}

        {{ component('structured-data') }}

    </head>
    <body class="{% if settings.head_fix %}js-head-offset head-offset{% endif %} {% if customer %}customer-logged-in{% endif %} template-{{ template | replace('.', '-') }}">

        {# Page content #}

          <div class="mttocont">
            <div id="w-node-_46d8964c-167c-42eb-1366-7b03a87a9a68-20e2c06a" class="w-layout-layout stackmtto wf-layout-layout">
                <div class="w-layout-cell celllogo">
                    <div>
                        <img loading="lazy" src="{{ "images/amie_logo_header.svg" | static_url }}" alt="amie world logo" class="logomtto">
                    </div>
                </div>
                <div class="w-layout-cell">
                    <h1 class="titlemtto">Estamos preparando algo increíble para ti 🎁</h1>
                    <p class="txtmtto">Por favor, inténtalo nuevamente en unos minutos para descubrir todas las novedades.</p>
                    <div id="Lock">
                        <img data-w-id="46d8964c-167c-42eb-1366-7b03a87a9a72" loading="lazy" alt="" src="{{ "images/password_icon.svg" | static_url }}" class="iconformmtto">
                    </div>
                    <div class="div-block">
                        <div class="formloginstore w-form" id="Pass">
                            {% embed "snipplets/forms/form.tpl" with{form_id: 'password-form', submit_text: 'Login' | translate, form_custom_class: 'contlogform', submit_custom_class: 'logiintienda w-button' } %}
                                {% block form_body %}

                                    {% embed "snipplets/forms/form-input.tpl" with{input_for: 'password', type_password: true, input_name: 'password', input_help: true, input_help_link: store.customer_reset_password_url, input_custom_class: 'passtienda w-input' } %}
                                        {% block input_form_alert %}
                                            {% if invalid_password == true %}
                                                <div class="alert alert-danger">{{ 'La contraseña es incorrecta.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}

                                {% endblock %}
                            {% endembed %}
                        </div>
                    </div>
                </div>
            </div>
        </div>



        {# Javascript needed to footer logos lazyload #}

        <script type="text/javascript">

            {# Libraries that do NOT depend on other libraries, e.g: Jquery #}

            {% include "static/js/external-no-dependencies.js.tpl" %}
            

        </script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const lock = document.getElementById("Lock");
                const pass = document.getElementById("Pass");
                pass.style.display = "none";

                lock.addEventListener("click", function () {
                pass.style.display = pass.style.display === "none" ? "block" : "none";
                });
            });
        </script>

        <style>
            .mt-4.text-center {
                display: none;
            }

            a.js-password-view.btn.form-toggle-eye {
                display: none;
            }

            .form-group {
                margin: 0;
            }

            input.btn.btn-primary.logiintienda.w-button {
                text-transform: none;
                letter-spacing: 0;
            }
        </style>


    </body>
</html>
