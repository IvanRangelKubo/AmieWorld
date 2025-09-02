{# Configuración de productos relacionados #}
{% set related_products = [] %}
{% set related_products_ids_from_app = product.metafields.related_products.related_products_ids %}
{% set has_related_products_from_app = related_products_ids_from_app | get_products | length > 0 %}

{% if has_related_products_from_app %}
    {% set related_products = related_products_ids_from_app | get_products %}
{% endif %}

{% if related_products is empty %}
    {% set max_related_products_length = 8 %}
    {% set related_products_without_stock = [] %}
    
    {% if related_tag %}
        {% set products_from_category = related_products_from_controller %}
    {% else %}
        {% set products_from_category = category.products | shuffle %}
    {% endif %}

    {% for product_from_category in products_from_category if related_products | length < max_related_products_length and product_from_category.id != product.id %}
        {% if product_from_category.stock is null or product_from_category.stock > 0 %}
            {% set related_products = related_products | merge([product_from_category]) %}
        {% else %}
            {% set related_products_without_stock = related_products_without_stock | merge([product_from_category]) %}
        {% endif %}
    {% endfor %}

    {% if related_products | length < max_related_products_length %}
        {% set related_products = related_products | merge(related_products_without_stock | slice(0, max_related_products_length - related_products | length)) %}
    {% endif %}
{% endif %}

{# Si no hay productos relacionados, no mostramos la sección #}
{% if related_products is not empty %}
    <div class="seccrecomendados">
    <div class="customcontainer">
            <div class="secctitles">
            <h1 class="maintitle">{{ settings.products_related_title }}</h1>
            <div class="linetitle"></div>
            </div>
        <div class="w-embed">
            <div class="owl-carousel productosowl owl-theme" id="sync2">
                {% for related_product in related_products %}
                    <div class="container-producto">
                    <div class="contimgproducto">
                        {% if not related_product.has_stock %}
                        <div class="etiquetas-prod">AGOTADO</div>
                        {% endif %}
                        {% if related_product.compare_at_price > related_product.price %}
                        <div class="etiquetas-prod oferta">-{{ (((related_product.compare_at_price - related_product.price) * 100) / related_product.compare_at_price) | round(0, 'floor') }}%</div>
                        {% endif %}
                        <a href="{{related_product.canonical_url}}" class="linkproducto w-inline-block">
                            {% if related_product.images_count > 1 %}
                                <div style="background-image:url({{ related_product.images[1] | product_image_url('original') }})" class="imgback" ></div>
                            {% else %}
                                <div style="background: transparent" class="imgback" ></div>
                            {% endif %}

                            {# armamos la URL "real" de la imagen destacada #}
                            {% set featured_url = related_product.featured_image | product_image_url('original') %}
                            {# en TN, cuando no hay imagen, la URL incluye "no-photo" #}
                            {% set has_real_image = featured_url and ('no-photo' not in featured_url) %}

                            {% if has_real_image %}
                                <div class="imgfront {% if related_product.images_count > 1 %}hoverOn{% endif %}"
                                    style="background-image:url({{ featured_url }})"></div>
                            {% else %}
                                <div class="imgfront {% if related_product.images_count > 1 %}hoverOn{% endif %}" style="background-image:url({{ 'images/placeholder_amieworld.webp' | static_url }})"></div>
                        {% endif %}
                        </a>

                        {% if product.available and not product.variations %}
                        <form class="js-product-form" method="post" action="{{ store.cart_url }}">
                            <input type="hidden" name="add_to_cart" value="{{ product.id }}" />
                            <input type="hidden" name="quantity" value="1" />

                            <button type="submit"
                                    class="adtobag js-addtocart js-prod-submit-form"
                                    data-store="product-buy-button">
                            <img src="{{ "images/addtobagicon.svg" | static_url }}" 
                                alt="Agregar" 
                                class="iconquickshop">
                            </button>
                        </form>
                        {% endif %}

                    </div>

                    <div class="container-titleandprices">
                        
                        <div>{{related_product.featured_image.name}}</div>
                        <a href="{{related_product.canonical_url}}" class="nombre-producto">{{related_product.name}}</a>
                        <div class="precios-container">
                            {% if related_product.compare_at_price or related_product.promotional_offer %}
                            <div class="precio-regular">{{ related_product.compare_at_price | money }}</div>
                            <div class="precio-oferta">{{ related_product.price | money }}</div>
                            {% else %}
                            <div class="precio-regular">{{ related_product.price | money }}</div>
                            {% endif %}  
                        </div>
            
                    </div>

                    </div>        
                {% endfor %}
            </div>
        </div>
    </div>
    </div>
{% endif %}