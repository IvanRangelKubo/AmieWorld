  {% set section = {
    'primary': sections.primary.products,
    'secundary': sections.secundary.products,
  } %}
 
  <div class="seccproductos">
    <div class="customcontainer">

      <div class="secctitles">
        <h2 class="maintitle">{{ settings.home_featured_products_title | raw }}</h2>
        <div class="linetitle"></div>
      </div>

      <div class="w-embed">
       <div class="owl-carousel productosowl owl-theme" id="sync2">
          {% for product in section[settings.home_featured_products] %}
            <div class="container-producto">
              <div class="contimgproducto">
                {% if not product.has_stock %}
                  <div class="etiquetas-prod">AGOTADO</div>
                {% endif %}
                {% if product.compare_at_price > product.price %}
                  <div class="etiquetas-prod oferta">-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</div>
                {% endif %}
                <a href="{{product.canonical_url}}" class="linkproducto w-inline-block">
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
                <a href="{{product.canonical_url}}" class="adtobag">
                  <img  src="{{ "images/addtobagicon.svg" | static_url }}" alt="" class="iconquickshop">
                </a>
              </div>

              <div class="container-titleandprices">
                <div class="contstarsreviews"></div>
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

            </div>
          {% endfor %}
        </div>
      </div>
    </div>
  </div>

  <script>
  
  </script>