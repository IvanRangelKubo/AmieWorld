

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

        {% set brand = product.brand|lower|trim %}

        {% if brand == "merry monde" or brand == "merrymonde" %}
        <img src="{{ "images/amie_world_brand_1.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "spalife" %}
        <img src="{{ "images/amie_world_brand_2.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "patchholic" %}
        <img src="{{ "images/amie_world_brand_3.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "black rouge" or brand == "blackrouge" %}
        <img src="{{ "images/amie_world_brand_4.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "11 village factory" or brand == "11villagefactory" %}
        <img src="{{ "images/amie_world_brand_5.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "peach and" or brand == "peachand" %}
        <img src="{{ "images/amie_world_brand_6.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "look at me" or brand == "lookatme" %}
        <img src="{{ "images/amie_world_brand_7.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "lala recipe" or brand == "lalarecipe" %}
        <img src="{{ "images/amie_world_brand_8.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% elseif brand == "midha rice lab" or brand == "midharicelab" %}
        <img src="{{ "images/amie_world_brand_9.webp" | static_url }}" loading="lazy" class="brandlogovip">
        {% endif %}

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

            <div class="ctavip-cont">
                <input type="submit" style="margin: 0;" class="btn-vip w-button js-addtocart js-prod-submit-form btn btn-primary btn-block mb-4 {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} data-store="product-buy-button" data-component="product.add-to-cart"/>
                {# Fake add to cart CTA visible during add to cart event #}
                {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "btn-block mb-4"} %}
                <div class="js-added-to-cart-product-message float-leftt w-100 mb-3 text-center text-md-left" style="display: none;">
                    {{'Ya agregaste este producto.' | translate }}<a href="#" class="js-modal-open js-fullscreen-modal-open btn btn-link ml-1" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart">{{ 'Ver carrito' | translate }}</a>
                </div>
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

        .pdescrip {
            height: 150px !important;
        }

        .ctavip-cont {
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            padding-top: 5px;
            padding-bottom: 5px;
            display: flex;
        }

        .js-added-to-cart-product-message.float-leftt.w-100.mb-3.text-center.text-md-left {
            font-family: Montserrat, sans-serif;
            font-size: 14px;
            font-weight: 500;
            line-height: 22px;
        }

        .nostock, .nostock:hover {
            background: #ddd !important;
            opacity: 0.5 !important;
            cursor: not-allowed !important;
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

    <script>
        document.addEventListener("DOMContentLoaded", function () {
        const wrapper = document.getElementById("barritadescrip");

        if (wrapper) {
            // Encuentra nodos huérfanos fuera del <p>
            const children = Array.from(wrapper.childNodes);
            children.forEach(node => {
            if (node.nodeType === 1 && !node.classList.contains("pdescrip")) {
                // lo meto dentro del <p>
                let p = wrapper.querySelector(".pdescrip");
                if (!p) {
                p = document.createElement("p");
                p.className = "pdescrip";
                wrapper.appendChild(p);
                }
                p.appendChild(node);
            }
            });
        }
        });
    </script>