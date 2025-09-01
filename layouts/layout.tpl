<!DOCTYPE html>
<html data-wf-page="6887a744c366a2ae40132ca6" data-wf-site="6887a73ec366a2ae40132b42" >
    <head>
        <link rel="preconnect" href="{{ store_resource_hints }}" />
        <link rel="dns-prefetch" href="{{ store_resource_hints }}" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>{{ page_title }}</title>
        <meta name="description" content="{{ page_description }}" />

        <!-- Enlaces CSS para OwlCarousel2 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

        <!-- Preconectar a Google Fonts -->
        <link href="https://fonts.googleapis.com" rel="preconnect">
        <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">

        <!-- Cargar WebFont Loader -->
        <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
        <script type="text/javascript">WebFont.load({  google: {    families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic","Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic"]  }});</script>
        <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>


        {# Preload of first image of Slider to improve LCP #}
        {% if template == 'home'%}
            {% snipplet 'preload-images.tpl' %}
        {% endif %}

        {{ component('social-meta') }}

        {#/*============================================================================
            #CSS and fonts
        ==============================================================================*/#}

        {# Critical CSS needed to show first elements of store while CSS async is loading #}


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

        <style type="text/css">
            #barritascroll::-webkit-scrollbar {
            width: 8px;
            height: 6px;
            }
            #barritascroll::-webkit-scrollbar-button {
            width: 0px;
            height: 0px;
            }
            #barritascroll::-webkit-scrollbar-thumb {
            background: #000;
            border: 0px none #C6C6C6;
            border-radius: 0px;
            }
            #barritascroll::-webkit-scrollbar-thumb:hover {
            background: #000;
            }
            #barritascroll::-webkit-scrollbar-thumb:active {
            background: #000;
            }
            #barritascroll::-webkit-scrollbar-track {
            background: #FFF5F8;
            border: 0px solid #FFF5F8;
            border-radius: 0px;
            }
            #barritascroll::-webkit-scrollbar-track:hover {
            background: #FFF5F8;
            }
            #barritascroll::-webkit-scrollbar-track:active {
            background: #FFF5F8;
            }
            #barritascroll::-webkit-scrollbar-corner {
            background: transparent;
            }
        </style>
        <style type="text/css">
            #barritadescrip::-webkit-scrollbar {
            width: 8px;
            height: 6px;
            }
            #barritadescrip::-webkit-scrollbar-button {
            width: 0px;
            height: 0px;
            }
            #barritadescrip::-webkit-scrollbar-thumb {
            background: #000;
            border: 0px none #C6C6C6;
            border-radius: 0px;
            }
            #barritadescrip::-webkit-scrollbar-thumb:hover {
            background: #000;
            }
            #barritadescrip::-webkit-scrollbar-thumb:active {
            background: #000;
            }
            #barritadescrip::-webkit-scrollbar-track {
            background: #FFF5F8;
            border: 0px solid #FFF5F8;
            border-radius: 0px;
            }
            #barritadescrip::-webkit-scrollbar-track:hover {
            background: #FFF5F8;
            }
            #barritadescrip::-webkit-scrollbar-track:active {
            background: #FFF5F8;
            }
            #barritadescrip::-webkit-scrollbar-corner {
            background: transparent;
            }
        </style>

        <style>
            .js-head-main.section-headercust {
                position: sticky;
                top: 0;
                z-index: 9999;
            }
        </style>

        {# Colors and fonts used from settings.txt and defined on theme customization #}

        {{ 'css/style-colors.scss.tpl' | static_url | static_inline }}

        {# Load async styling not mandatory for first meaningfull paint #}

        <link rel="stylesheet" href="{{ 'css/style-async.scss.tpl' | static_url }}" media="print" onload="this.media='all'">
        {# IV: Se incluye el CSS custom del tema #}
        <link rel="stylesheet" href="{{ 'css/personalized3.css' | static_url }}">

        <style>
            iframe#store_bar_iframe {
                visibility: hidden;
            }

            a.js-notification-close.js-acknowledge-cookies.btn.btn-primary.btn-medium.px-4.py-2.d-inline-block.loginpopbtn.w-button {
                margin: 0;
            }

            .js-notification.js-notification-cookie-banner.notification.notification-fixed-bottom.notification-above.notification-secondary {
                background: white;
            }
        </style>

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

        {# Loads private Tiendanube JS #}

        {% head_content %}

        {# Structured data to provide information for Google about the page content #}

        {{ component('structured-data') }}

    </head>
    <body class="{% if settings.head_fix %}js-head-offset head-offset{% endif %} {% if customer %}customer-logged-in{% endif %} template-{{ template | replace('.', '-') }}">
        {# Facebook comments on product page #}

        {% if template == 'product' %}

            {# Facebook comment box JS #}
            {% if settings.show_product_fb_comment_box %}
                {{ fb_js }}
            {% endif %}

            {# Pinterest share button JS #}
            {{ pin_js }}

        {% endif %}

        {# Back to admin bar #}

        {{back_to_admin}}

        {# Header = Advertising + Nav + Logo + Search + Ajax Cart #}

        {% snipplet "header/header.tpl" %}

        {# Page content #}

        {% template_content %}

        {# Modals overlay #}

        <div class="js-modal-overlay modal-overlay" style="display: none;"></div>

        {# Quickshop modal #}

        {% snipplet "grid/quick-shop.tpl" %}

        {# WhatsApp chat button #}

        {% snipplet "whatsapp-chat.tpl" %}

        {# Footer #}

        {% snipplet "footer.tpl" %}

        {% if cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price %}

            {# Minimum used for free shipping progress messages. Located on header so it can be accesed everywhere with shipping calculator active or inactive #}

            <span class="js-ship-free-min hidden" data-pricemin="{{ cart.free_shipping.min_price_free_shipping.min_price_raw }}"></span>
            <span class="js-free-shipping-config hidden" data-config="{{ cart.free_shipping.allFreeConfigurations }}"></span>
            <span class="js-cart-subtotal hidden" data-priceraw="{{ cart.subtotal }}"></span>
            <span class="js-cart-discount hidden" data-priceraw="{{ cart.promotional_discount_amount }}"></span>
        {% endif %}

        {#/*============================================================================
            #Javascript: Needed after HTML loads
        ==============================================================================*/#}

        {# Javascript used in the store #}

        <script type="text/javascript">

            {# Libraries that do NOT depend on other libraries, e.g: Jquery #}

            {% include "static/js/external-no-dependencies.js.tpl" %}

            {# LS.ready.then function waits to Jquery and private Tiendanube JS to be loaded before executing what´s inside #}

            LS.ready.then(function(){

                {# Libraries that requires Jquery to work #}

                {% include "static/js/external.js.tpl" %}

                {# Specific store JS functions: product variants, cart, shipping, etc #}

                {% include "static/js/store.js.tpl" %}
            });
        </script>

        {# Google reCAPTCHA on register page #}

        {% if template == 'account.register' %}
            {% if not store.hasContactFormsRecaptcha() %}
                {{ '//www.google.com/recaptcha/api.js' | script_tag(true) }}
            {% endif %}
            <script type="text/javascript">
                var recaptchaCallback = function() {
                    jQueryNuvem('.js-recaptcha-button').prop('disabled', false);
                };
            </script>
        {% endif %}

        {# Store external codes added from admin #}

        {{ component('assorted-js', {}) }}

        <!--Webflow Configuration -->

        <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=6887a73ec366a2ae40132b42" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="{{ 'js/amieworld.js' | static_url }}"></script>

        <!-- Script ShareThis (cargado de forma asincrónica) -->
        <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=668eee1ee1507500197b00f9&product=sop" async="async"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

        <!--Owl carrucel-->

        <script>
            $(document).ready(function(){
            $(".productosowl").owlCarousel({
                loop:true,
                margin:3,    
                navRewind: true,
                autoWidth:false,
                autoplay:false,
                slideSpeed: 4000,
                navText: ['<div class="arrowslider w-slider-arrow-left"><div class="iconslidermain w-icon-slider-left"></div></div>','<div class="arrowslider w-slider-arrow-right"><div class="iconslidermain w-icon-slider-right"></div></div>'],
                responsiveClass:true,
                responsive:{
                    0:{
                        items:1,
                        nav:false,
                        dots:true,
                        mouseDrag: true,
                        touchDrag: true
                    },
                    480:{
                        items:2,
                        nav:false,
                        dots:true,
                        mouseDrag: true,
                        touchDrag: true
                    },
                    767:{
                        items:3,
                        nav:true,
                        dots:false,
                        mouseDrag: true,
                        touchDrag: true
                    },
                991:{
                        items:4,
                        nav:true,
                        dots:false
                    }
                }
            });
            });  
        </script>
        <script>
            $(document).ready(function(){
            $(".marcasowl").owlCarousel({
            loop:true,
            margin:3,    
            navRewind: true,
            autoWidth:false,
            autoplay:false,
            slideSpeed: 4000,
            navText: ['<div class="mainslider-arrow w-slider-arrow-left"><div class="w-icon-slider-left"></div></div>','<div class="mainslider-arrow w-slider-arrow-right"><div class="w-icon-slider-right"></div></div>'],
            responsiveClass:true,
            responsive:{
                0:{
                    items:3,
                    nav:false,
                    dots:true,
                    mouseDrag: true,
                    touchDrag: true
                },
                480:{
                    items:4,
                    nav:false,
                    dots:true,
                    mouseDrag: true,
                    touchDrag: true
                },
                767:{
                    items:6,
                    nav:true,
                    dots:false,
                    mouseDrag: true,
                    touchDrag: true
                },
            991:{
                    items:9,
                    nav:true,
                    dots:false
                }
            }
        });
        });  
        </script>

    </body>
</html>
