{# Site Overlay #}
<div class="js-overlay site-overlay" style="display: none;"></div>

{# Header #}
<div class=" js-head-main section-headercust" data-store="head">
    
    <div data-w-id="c828cb3c-650a-2310-28ed-eb3e6a59f889" data-animation="default" data-collapse="medium" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="customnav w-nav">
      <div class="customcontainer navbar">

        <div class="menu-button w-nav-button">
            <div class="w-icon-nav-menu"></div>
        </div>

        {% snipplet "header/header-logo.tpl" %}

        {% snipplet "navigation/navigation-nav-list.tpl" %}

        {% snipplet "header/header-utilities.tpl" %}

      </div>
    </div>

</div>

{% if not settings.head_fix %}
    {% include "snipplets/notification.tpl" with {add_to_cart: true, add_to_cart_fixed: true} %}
{% endif %}

{# Show cookie validation message #}
{% include "snipplets/notification.tpl" with {show_cookie_banner: true} %}

{# Hamburger panel #}
{% embed "snipplets/modal.tpl" with{modal_id: 'nav-hamburger',modal_class: 'nav-hamburger modal-docked-small', modal_position: 'left', modal_transition: 'fade', modal_width: 'full', modal_fixed_footer: true, modal_footer: true, modal_footer_class: 'p-0' } %}
    {% block modal_body %}
        {% include "snipplets/navigation/navigation-panel.tpl" with {primary_links: true} %}
    {% endblock %}
    {% block modal_foot %}
        {% include "snipplets/navigation/navigation-panel.tpl" %}
    {% endblock %}
{% endembed %}

{# Notifications #}

{# Modal Search #}
{% embed "snipplets/modal.tpl" with{modal_id: 'nav-search', modal_class: 'searchcont w-form', modal_header_class: 'hide' , modal_position: 'right', modal_transition: 'slide', modal_width: 'docked-md' } %}
    {% block modal_body %}
        {% snipplet "header/header-search.tpl" %}
    {% endblock %}
{% endembed %}

<style>
    .js-modal-close.modal-header.hide {
        display: none;
    }
</style>

{% if not store.is_catalog and settings.ajax_cart and template != 'cart' %}           
    {# Cart Ajax #}
    {% embed "snipplets/modal.tpl" with{modal_id: 'modal-cart', modal_position: 'right', modal_transition: 'slide', modal_width: 'docked-md', modal_form_action: store.cart_url, modal_form_class: 'js-ajax-cart-panel', modal_mobile_full_screen: true, modal_form_hook: 'cart-form' } %}
        {% block modal_head %}
            {% block page_header_text %}{{ "Mi bolsa" | translate }}{% endblock page_header_text %}
        {% endblock %}
        {% block modal_body %}
            {% snipplet "cart-panel.tpl" %}
        {% endblock %}
    {% endembed %}

    {% if settings.add_to_cart_recommendations %}

        {# Recommended products on add to cart #}

        {% embed "snipplets/modal.tpl" with{modal_id: 'related-products-notification', modal_class: 'bottom modal-overflow-none modal-bottom-sheet h-auto', modal_header_class: 'px-0 pt-0 mb-2 m-0 w-100', modal_position: 'bottom', modal_transition: 'slide', modal_width: 'centered modal-centered-md-600px p-3'} %}
            {% block modal_head %}
                {% block page_header_text %}{{ '¡Agregado al carrito!' | translate }}{% endblock page_header_text %}
            {% endblock %}
            {% block modal_body %}

                {# Product added info #}

                {% include "snipplets/notification-cart.tpl" with {related_products: true} %}

                {# Product added recommendations #}

                <div class="js-related-products-notification-container" style="display: none"></div>

            {% endblock %}
        {% endembed %}
    {% endif %}
{% endif %}

{# Cross selling promotion notification on add to cart #}

{% embed "snipplets/modal.tpl" with {
    modal_id: 'js-cross-selling-modal',
    modal_class: 'bottom modal-bottom-sheet h-auto overflow-none modal-body-scrollable-auto',
    modal_header: true,
    modal_header_class: 'm-0 w-100',
    modal_position: 'bottom',
    modal_transition: 'slide',
    modal_footer: true,
    modal_width: 'centered-md m-0 p-0 modal-full-width modal-md-width-400px'
} %}
    {% block modal_head %}
        {{ '¡Descuento exclusivo!' | translate }}
    {% endblock %}

    {% block modal_body %}
        {# Promotion info and actions #}

        <div class="js-cross-selling-modal-body" style="display: none"></div>
    {% endblock %}
{% endembed %}