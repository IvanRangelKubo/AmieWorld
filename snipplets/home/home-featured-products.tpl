  {% set section = {
    'primary': sections.primary.products,
    'secundary': sections.secundary.products,
  } %}
 
  <div class="seccdestacados">
    <div class="custom-container">
      <div class="maintitle-cont">
        <h2 class="maintitle">{{ settings.home_featured_products_title | raw }}</h2>
      </div>
      <div class="code-embed w-embed">
       <div class="owl-carousel productosowl owl-theme" id="sync2">
          {% for product in section[settings.home_featured_products] %}
            <div class="container-producto">
              <div class="contimgproducto">
                {% if not product.has_stock %}
                  <div class="etiquetas-prod agotado">AGOTADO</div>
                {% endif %}
                {% if product.compare_at_price > product.price %}
                  <div class="etiquetas-prod oferta">-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</div>
                {% endif %}
                <a href="{{product.canonical_url}}" class="linkproducto w-inline-block">
                  <div class="imgback"></div>
                  {% if product.images_count > 1 %}
                      <img src="{{ product.images[1] | product_image_url('original') }}" alt="{{ product.images[1].alt }}" class="imgback"/> 
                  {% endif %}
                  <img src="{{ product.featured_image | product_image_url('original') }}" alt="{{ product.featured_image.alt }}" class="imgfront {% if product.images_count > 1 %}hoverOn{% endif %}"/> 
                </a>
              </div>

              <div class="container-titleandprices">
                <div>{{product.featured_image.name}}</div>
                <a href="{{product.canonical_url}}" class="nombre-producto">{{product.name}}</a>
                <div class="precios-container">
                    {% if product.compare_at_price or product.promotional_offer %}
                      <div class="precio-regular">{{ product.compare_at_price | money }}</div>
                      <div class="precio-oferta">{{ product.price | money }}</div>
                    {% else %}
                      <div class="precio-regular">{{ product.price | money }}</div>
                    {% endif %}  </div>
                <div class="contreviews"></div>
                <a href="{{product.canonical_url}}" class="btnagregar w-button">COMPRAR</a>
              </div>
            </div>
          {% endfor %}
        </div>
      </div>
    </div>
  </div>