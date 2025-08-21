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

<div class="seccrecomendados">
  <div class="custom-container">
    <div class="maintitle-cont">
      <h2 class="maintitle">PRODUCTOS <span class="redtxttitle">RECOMENDADOS</span></h2>
    </div>
    <div class="code-embed w-embed">
        <div class="owl-carousel productosowl owl-theme" id="sync2">
            {% for related_product in related_products %}
                <div class="container-producto">
                    <div class="contimgproducto">
                    {% if related_product.stock == 0 %}
                        <div class="etiquetas-prod agotado">AGOTADO</div>
                    {% elseif related_product.discount > 0 %}
                        <div class="etiquetas-prod oferta">-{{ related_product.discount }}%</div>
                    {% endif %}
                    <a href="{{ related_product.url }}" class="linkproducto w-inline-block">
                        <div class="imgback" style="background-image: url('{{ related_product.images[1] | product_image_url('original') }}');"></div>
                        <div class="imgfront {% if product.images_count > 1 %}hoverOn{% endif %}" style="background-image: url('{{ related_product.featured_image | product_image_url('original') }}');"></div>
                    </a>
                    </div>
                    <div class="container-titleandprices">
                    <a href="{{ related_product.url }}" class="nombre-producto">{{ related_product.name }}</a>

                    <div class="precios-container">
                    {% if product.compare_at_price or product.promotional_offer %}
                      <div class="precio-regular">{{ product.compare_at_price | money }}</div>
                      <div class="precio-oferta">{{ product.price | money }}</div>
                    {% else %}
                      <div class="precio-regular">{{ product.price | money }}</div>
                    {% endif %}  </div>

                    <div class="contreviews"></div>
                    <a href="{{ related_product.add_to_cart_url }}" class="btnagregar w-button">COMPRAR</a>
                    </div>
                </div>
                
            {% endfor %}
        </div>
    </div>
  </div>
</div>
