
<div class="cont-infoprod">
    {# Product name and breadcrumbs #}
    {% if product.compare_at_price > product.price %}
        <div class="tagsvip descount"><strong>-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</strong></div>
    {% endif %}
    <h1 class="titulovip-producto">{{ product.name }}</h1>


    {# Product price #}

    <div class="contprecios-vip" data-store="product-price-{{ product.id }}" >
        {% if product.compare_at_price or product.promotional_offer %}
            <div id="compare_price_display" class="js-compare-price-display precio-vip">{{ product.compare_at_price | money }}</div>
            <div id="price_display" data-product-price="{{ product.price }}" class="js-price-display precio-vip oferta">{{ product.price | money }}</div>
        {% else %}
            <div id="price_display" data-product-price="{{ product.price }}" class="js-price-display precio-vip">{{ product.price | money }}</div>
        {% endif %}  
    </div>
    
    {# Product installments #}

    {% set installments_info = product.installments_info_from_any_variant %}
    {% set hasDiscount = product.maxPaymentDiscount.value > 0 %}
    {% set show_payments_info = product.show_installments and product.display_price and installments_info %}

    {% if show_payments_info or hasDiscount %}

        <div data-toggle="#installments-modal" data-modal-url="modal-fullscreen-payments" class="js-modal-open js-fullscreen-modal-open js-product-payments-container mb-2" {% if not (product.get_max_installments and product.get_max_installments(false)) %}style="display: none;"{% endif %}>

            {# Max Payment Discount #}

            {% set hideDiscountContainer = not (hasDiscount and product.showMaxPaymentDiscount) %}
            {% set hideDiscountDisclaimer = not product.showMaxPaymentDiscountNotCombinableDisclaimer %}

            <div class="js-product-discount-container text-center text-md-left mb-2" {% if hideDiscountContainer %}style="display: none;"{% endif %}>
                <span><strong class="text-accent">{{ product.maxPaymentDiscount.value }}% {{'de descuento' | translate }}</strong> {{'pagando con' | translate }} {{ product.maxPaymentDiscount.paymentProviderName }}</span>
                <div class="js-product-discount-disclaimer font-small mt-1" {% if hideDiscountDisclaimer %}style="display: none;"{% endif %}>
                    {{ "No acumulable con otras promociones" | translate }}
                </div>
            </div>

            {# Installments #}

            {% if show_payments_info %}
                {% set max_installments_without_interests = product.get_max_installments(false) %}
                {% set installments_without_interests = max_installments_without_interests and max_installments_without_interests.installment > 1 %}
                {% set installment_text_weigth = installments_without_interests ? 'font-weight-bold' : '' %}
                {{ component('installments', {'location' : 'product_detail', container_classes: { installment: "product-detail-installments text-center text-md-left mb-2 " ~ installment_text_weigth}}) }}
            {% endif %}

            <div class="form-row align-items-center align-items-start-md mb-4">
                {% set has_payment_logos = settings.payments %}
                {% if has_payment_logos %}
                <ul class="list-inline col col-md-auto text-center text-md-left">
                    {% for payment in settings.payments %}
                        {# Payment methods flags #}
                        {% if store.country == 'BR' %}
                        {% if payment in ['visa', 'mastercard'] %}
                            <li>
                            {{ payment | payment_new_logo | img_tag('',{class: 'card-img card-img-small lazyload'}) }}
                            </li>
                        {% endif %}
                        {% else %}
                            {% if payment in ['visa', 'amex', 'mastercard'] %}
                            <li>
                                {{ payment | payment_new_logo | img_tag('',{class: 'card-img card-img-small lazyload'}) }}
                            </li>
                            {% endif %}
                        {% endif %}
                    {% endfor %}
                    <li>
                        {% include "snipplets/svg/credit-card-blank.tpl" with {svg_custom_class: "icon-inline icon-w-18 icon-2x " ~ card_icon_color ~ ""} %}
                    </li>
                </ul>
                {% endif %}
                <div class="col-12 col-md-auto text-center">
                    <a id="btn-installments" class="btn-link" {% if not (product.get_max_installments and product.get_max_installments(false)) %}style="display: none;"{% endif %}>
                        {{ "Ver medios de pago" | translate }}
                    </a>
                </div>
            </div>
        </div>

    {% endif %}

    {# Product availability #}

    {% set show_product_quantity = product.available and product.display_price %}

    {# Free shipping minimum message #}

    {% set has_free_shipping = cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price %}
    {% set has_product_free_shipping = product.free_shipping %}

    {% if not product.is_non_shippable and show_product_quantity and (has_free_shipping or has_product_free_shipping) %}
        <div class="free-shipping-message text-center text-md-left mb-4 pb-2">
            <span class="d-inline-block">
                {% include "snipplets/svg/truck.tpl" with {svg_custom_class: "icon-inline icon-w-18 icon-lg svg-icon-accent mr-2"} %}
            </span>
            <span class="d-inline-block">
                <strong class="text-accent">{{ "Envío gratis" | translate }} </strong>
                <span {% if has_product_free_shipping %}style="display: none;"{% else %}class="js-shipping-minimum-label"{% endif %}>
                    {{ "superando los" | translate }} <span>{{ cart.free_shipping.min_price_free_shipping.min_price }}</span>
                </span>
            </span>
            {% if not has_product_free_shipping %}
                <div class="js-free-shipping-discount-not-combinable font-small mt-1">
                    {{ "No acumulable con otras promociones" | translate }}
                </div>
            {% endif %}
        </div>
    {% endif %}

    {# Product form, includes: Variants, CTA and Shipping calculator #}

    <form id="product_form" class="js-product-form" method="post" action="{{ store.cart_url }}" data-store="product-form-{{ product.id }}">
        <input type="hidden" name="add_to_cart" value="{{product.id}}" />
        {% if product.variations %}
            {% include "snipplets/product/product-variants.tpl" with {show_size_guide: true} %}
        {% endif %}

        {% if product.available and product.display_price %}
            {% include "snipplets/product/product-quantity.tpl" %}
        {% endif %}
        {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
        {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}

        {# Add to cart CTA #} {# IV: Importante revisar #}

        <div class="ctavip-cont">
            <input type="submit" style="margin: 0;" class="btn-vip js-addtocart js-prod-submit-form btn btn-primary btn-block mb-4 {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} data-store="product-buy-button" data-component="product.add-to-cart"/>
        </div>

        {# Free shipping visibility message #}
        <div class="btn-sizeinfo">
            <img loading="lazy" src="{{ 'images/icon_envios.svg' | static_url }}" alt="" class="inconsiechart">
            <div class="titulovip-elements"><strong>ENVÍOS GRATIS </strong>en compras mayores a<strong> $ 999.ºº</strong></div>
        </div>
        <img src="{{ 'images/pagoslogosvip.png' | static_url }}" loading="lazy" class="pagosvip">

    </form>

    {# Product share #}

        <div class="contsocial-media">
            <div class="titulovip-elements social">Compartir</div>
            <a data-network="copy" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="facebook" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="whatsapp" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy-3.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="telegram" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy-5.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="messenger" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy-4.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="twitter" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/icon_twitter_1.svg" | static_url }}" class="iconshare-social"></a>
        </div>

    {# Product description #}

    {% if product.description is not empty %}
        <div data-delay="0" data-hover="false" class="dropdown w-dropdown">
            <div class="toggle-desscription w-dropdown-toggle">
                <div class="w-icon-dropdown-toggle"></div>
                <div><strong>{{ "Descripción" | translate }}</strong></div>
            </div>
            <nav class="contdropdescrip w-dropdown-list">
                <div class="descripcion-corta">
                    <div class="txtdescription" data-store="product-description-{{ product.id }}">
                        {{ product.description | raw }}
                    </div>
                </div>
            </nav>
        </div>
    {% endif %}

</div>