

    {# Product share #}
    <div data-w-id="1c192b00-d0c1-408e-1357-99a300b583d4" class="containershare">
        <img loading="lazy" src="{{ "images/share_icon.svg" | static_url }}" class="shareicon" id="share-icon">
        <div class="contsocial-media" id="share-content">
            <a data-network="facebook" href="#" class="st-custom-button w-inline-block">
                <img alt="Facebook" src="{{ "images/icon-share.svg" | static_url }}" class="iconshare-social">
            </a>
            <a data-network="whatsapp" href="#" class="st-custom-button w-inline-block">
                <img alt="Whatsapp" src="{{ "images/icon-share-copy-2.svg" | static_url }}" class="iconshare-social">
            </a>
            <a data-network="telegram" href="#" class="st-custom-button w-inline-block">
                <img alt="Telegram" src="{{ "images/icon-share-copy-3.svg" | static_url }}" class="iconshare-social">
            </a>
            <a data-network="messenger" href="#" class="st-custom-button w-inline-block">
                <img alt="Messenger" src="{{ "images/icon-share-copy-4.svg" | static_url }}" class="iconshare-social">
            </a>
            <a data-network="twitter" href="#" class="st-custom-button w-inline-block">
                <img alt="Twitter" src="{{ "images/icon-share-copy.svg" | static_url }}" class="iconshare-social">
            </a>
            <a data-network="copy" href="#" class="st-custom-button w-inline-block">
                <img alt="Compartir" src="{{ "images/icon-share-copy-5.svg" | static_url }}" class="iconshare-social">
            </a>
        </div>
    </div>

    {# Product name and breadcrumbs #}
    <h1 class="titleproductvip">{{ product.name }}</h1>

    <div class="starreviews">
        <img src="{{ "images/starsreviews.png" | static_url }}" loading="lazy" alt="">
    </div>


    {# Product price #}

    <div class="contprecios-vip" data-store="product-price-{{ product.id }}" >
        {% if product.compare_at_price or product.promotional_offer %}
            <div id="compare_price_display" class="js-compare-price-display precio-vip">{{ product.compare_at_price | money }}</div>
            <div id="price_display" data-product-price="{{ product.price }}" class="js-price-display precio-vip oferta">{{ product.price | money }}</div>
        {% else %}
            <div id="price_display" data-product-price="{{ product.price }}" class="js-price-display precio-vip">{{ product.price | money }}</div>
        {% endif %} 
        {% if product.compare_at_price > product.price %}
            <div class="tagsvip"><strong>-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</strong></div>
        {% endif %}
    </div>

    <div class="logolinkvip">
        <img src="{{ "images/amie_world_brand_2.webp" | static_url }}" loading="lazy" class="brandlogovip">
    </div>

    {# Product form, includes: Variants, CTA and Shipping calculator #}
    <div class="formvip w-form">
        <form id="product_form" class="js-product-form vip-variacinqty-selection" method="post" action="{{ store.cart_url }}" data-store="product-form-{{ product.id }}">
            <input type="hidden" name="add_to_cart" value="{{product.id}}" />
            
            {% if product.variations %}
                {% include "snipplets/product/product-variants.tpl" with {show_size_guide: true} %}
            {% endif %}

            {% if product.available and product.display_price %}
                {% include "snipplets/product/product-quantity.tpl" %}
            {% endif %}

            {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
            {% set texts = {'cart': "Agregar a mi bolsa", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}

            {# Add to cart CTA #} {# IV: Importante revisar #}
            <div class="ctavip-cont">
                <input type="submit" style="margin: 0;" class="btn-vip w-button js-addtocart js-prod-submit-form btn btn-primary btn-block mb-4 {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} data-store="product-buy-button" data-component="product.add-to-cart"/>
            </div>

        </form>
    </div>

    <div class="contlogospagos vip">
        <img loading="lazy" src="{{ "images/visa-10.svg" | static_url }}" alt="" class="mediopago">
        <img loading="lazy" src="{{ "images/mastercard_logo.svg" | static_url }}" alt="" class="mediopago">
        <img loading="lazy" src="{{ "images/mercado_pago_logo4.svg" | static_url }}" alt="" class="mediopago">
        <img loading="lazy" src="{{ "images/paypal_logo.svg" | static_url }}" alt="" class="mediopago">
    </div>

    <div class="promovip">
        <img loading="lazy" src="{{ "images/icon_garantia-copia.svg" | static_url }}" alt="Envio Gratis" class="iconvip">
        <div class="titulovip-elements">
            <span class="pinktxtvip">ENVÍOS GRATIS</span> en compras mayores a <strong>$1,499ºº MXN </strong>
        </div>
    </div>

    {# Product description #}

    {% if product.description is not empty %}
          <div class="secctitles">
            <h1 class="maintitle">Descripción 🔍</h1>
            <div class="linetitle"></div>
          </div>

          <div id="barritadescrip" class="infodescrip">
            <p class="pdescrip" data-store="product-description-{{ product.id }}">
              {{ product.description | raw }}
            </p>
          </div>
    {% endif %}

    <style>

        .containershare {
            width: 240px;
            margin-bottom: 20px;
        }

        input.btn-vip.w-button.js-addtocart.js-prod-submit-form.btn.btn-primary.btn-block.mb-4.cart {
            letter-spacing: normal;
            text-transform: none;
        }

    </style>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
        const shareIcon = document.getElementById("share-icon");
        const shareContent = document.getElementById("share-content");

        if (shareIcon && shareContent) {
            shareContent.style.display = "none";

            shareIcon.addEventListener("click", function() {
            if (shareContent.style.display === "none" || shareContent.style.display === "") {
                shareContent.style.display = "block";
            } else {
                shareContent.style.display = "none";
            }
            });
        }
        });
    </script>