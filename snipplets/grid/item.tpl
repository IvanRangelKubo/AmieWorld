{# /*============================================================================
  #Item grid
==============================================================================*/

#Properties

#Slide Item

#}

{% set slide_item = slide_item | default(false) %}
{% set columns = settings.grid_columns %}

<div class="js-item-product item-product itemlisting" data-product-type="list" data-product-id="{{ product.id }}" data-store="product-item-{{ product.id }}" data-component="product-list-item" data-component-value="{{ product.id }}">

    {% if (settings.quick_shop or settings.product_color_variants) and not reduced_item %}
        <div class="js-product-container js-quickshop-container container-producto {% if product.variations %}js-quickshop-has-variants{% endif %}" data-variants="{{ product.variants_object | json_encode }}" data-quickshop-id="quick{{ product.id }}{% if slide_item and section_name %}-{{ section_name }}{% endif %}">
    {% endif %}

        {% set product_url_with_selected_variant = has_filters ?  ( product.url | add_param('variant', product.selected_or_first_available_variant.id)) : product.url  %}

        {% set item_img_width = product.featured_image.dimensions['width'] %}
        {% set item_img_height = product.featured_image.dimensions['height'] %}
        {% set item_img_srcset = product.featured_image %}
        {% set item_img_alt = product.featured_image.alt %}
        {% set item_img_spacing = item_img_height / item_img_width * 100 %}

        <div class="item-image mb-2 contimgproducto">
            {% if not product.has_stock %}
                  <div class="etiquetas-prod">AGOTADO</div>
            {% endif %}
            {% if product.compare_at_price > product.price %}
                <div class="etiquetas-prod oferta">-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</div>
            {% endif %}

            <div data-store="product-item-image-{{ product.id }}">
                <a href="{{ product_url_with_selected_variant }}" title="{{ product.name }}" class="linkproducto w-inline-block">
                  {% if product.images_count > 1 %}
                    <div style="background-image:url({{ product.images[1] | product_image_url('original') }})" class="imgback" ></div>
                  {% else %}
                    <div style="background: transparent" class="imgback" ></div>
                  {% endif %}

                  {# armamos la URL "real" de la imagen destacada #}
                  {% set featured_url = product.featured_image | product_image_url('original') %}
                  {# en TN, cuando no hay imagen, la URL incluye "no-photo" #}
                  {% set has_real_image = featured_url and ('no-photo' not in featured_url) %}

                  {% if has_real_image %}
                    <div class="imgfront {% if product.images_count > 1 %}hoverOn{% endif %}"
                        style="background-image:url({{ featured_url }})"></div>
                  {% else %}
                    <div class="imgfront {% if product.images_count > 1 %}hoverOn{% endif %}"
                        style="background-image:url({{ 'images/placeholder_amieworld.webp' | static_url }})"></div>
                  {% endif %}
                </a>
                <div class="adtobag">
                    <img loading="lazy" src="{{ "images/addtobagicon.svg" | static_url }}" class="iconquickshop">
                </div>
            </div>
            
        </div>
        
        

        {% if (settings.quick_shop or settings.product_color_variants) and product.available and product.display_price and product.variations and not reduced_item %}

            {# Hidden product form to update item image and variants: Also this is used for quickshop popup #}
            
            <div class="js-item-variants hidden">
                <form class="js-product-form" method="post" action="{{ store.cart_url }}">
                    <input type="hidden" name="add_to_cart" value="{{product.id}}" />
                    {% if product.variations %}
                        {% include "snipplets/product/product-variants.tpl" with {quickshop: true} %}
                    {% endif %}
                    {% if product.available and product.display_price and settings.quick_shop %}
                        {% include "snipplets/product/product-quantity.tpl" with {quickshop: true} %}
                    {% endif %}
                    {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
                    {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}

                    {# Add to cart CTA #}

                    <input type="submit" class="js-addtocart js-prod-submit-form btn btn-primary btn-block mx-auto {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} />

                    {# Fake add to cart CTA visible during add to cart event #}

                    {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "btn-block mx-auto"} %}

                </form>
            </div>

        {% endif %}


        <div class="container-titleandprices">
            <div class="contstarsreviews">
                <img src="{{ "images/starsreviews.png" | static_url }}" class="starsreview">
            </div>
            <div>{{product.featured_image.name}}</div>
            <a href="{{product.canonical_url}}" class="nombre-producto">{{product.name}}</a>
            <div class="precios-container">
                {% if product.compare_at_price or product.promotional_offer %}
                    <div class="precio-regular">{{ product.compare_at_price | money }}</div>
                    <div class="precio-oferta">{{ product.price | money }}</div>
                {% else %}
                    <div class="precio-regular">{{ product.price | money }}</div>
                {% endif %}  
            </div>
        </div>

    {% if (settings.quick_shop or settings.product_color_variants) and not reduced_item %}
        </div>
    {% endif %}
</div>