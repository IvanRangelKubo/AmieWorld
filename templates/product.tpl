<div id="single-product" class="containervip js-has-new-shipping js-product-detail js-product-container js-shipping-calculator-container" data-variants="{{product.variants_object | json_encode }}" data-store="product-detail">
    <div class="customcontainer">

        {% include "snipplets/breadcrumbs.tpl" with { breadcrumbs_custom_class: 'vip' } %}

        <div class="w-row section-single-product">
            <div class="w-col w-col-6" data-store="product-image-{{ product.id }}">
            	{% include 'snipplets/product/product-image.tpl' %}
            </div>
            <div class="infovipcol w-col w-col-6" data-store="product-info-{{ product.id }}">
            	{% include 'snipplets/product/product-form.tpl' %}
            </div>
        </div>
    </div>

    <div class="seccxque">
      <div class="customcontainer">

        <div class="secctitles">
          <h2 class="maintitle">{{ settings.products_why_title }}</h2>
          <div class="linetitle"></div>
        </div>

        <div data-delay="3000" data-animation="cross" class="garantiasvipslider w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="600" data-infinite="true">
          <div class="maskreview w-slider-mask">

            {% if settings.razon_1 %}
                <div class="slidevip w-slide">
                    <div class="witemvip">
                        <img src="{{ "why1.jpg" | static_url }}" loading="lazy"  class="wvipicon">
                        <p class="pwarrantvip">{{ settings.razon_1 }}</p>
                    </div>
                </div>
            {% endif %}

            {% if settings.razon_2 %}
                <div class="slidevip w-slide">
                    <div class="witemvip">
                        <img src="{{ "why2.jpg" | static_url }}" loading="lazy" class="wvipicon">
                        <p class="pwarrantvip">{{ settings.razon_2 }}</p>
                    </div>
                </div>
            {% endif %}

            {% if settings.razon_3 %}
                <div class="slidevip w-slide">
                    <div class="witemvip">
                        <img src="{{ "why3.jpg" | static_url }}" loading="lazy" class="wvipicon">
                        <p class="pwarrantvip">{{ settings.razon_3 }}</p>
                    </div>
                </div>
            {% endif %}

            {% if settings.razon_4 %}
                <div class="slidevip w-slide">
                    <div class="witemvip">
                        <img src="{{ "why4.jpg" | static_url }}" loading="lazy" class="wvipicon">
                        <p class="pwarrantvip">{{ settings.razon_4 }}</p>
                    </div>
                </div>
            {% endif %}

          </div>

          <div class="garantiasarrow w-slider-arrow-left">
            <div class="iconslidermain w-icon-slider-left"></div>
          </div>
          <div class="garantiasarrow w-slider-arrow-right">
            <div class="iconslidermain w-icon-slider-right"></div>
          </div>
          <div class="warrantyslidenav w-slider-nav w-slider-nav-invert w-round"></div>

        </div>
      </div>
    </div>

    {# Related products #}
    {% include 'snipplets/product/product-related.tpl' %}

    <div class="seccmarcas vip">
      <div class="customcontainer">

        <div class="secctitles">
          <h2 class="maintitle">{{ settings.products_brands_title }}</h2>
          <div class="linetitle"></div>
        </div>

        <div data-delay="4000" data-animation="slide" class="slidermarcas w-slider"  data-autoplay="true" data-easing="ease" data-hide-arrows="false"  data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3"  data-duration="500" data-infinite="true">
            <div class="brandsmask w-slider-mask">
                {% for i in 1..18 %}
                    {% set show = attribute(settings, 'show_product_brand_' ~ i) %}
                    {% set link = attribute(settings, 'product_brand_link_' ~ i) %}
                    {% set alt = attribute(settings, 'product_brand_' ~ i ~ '_alt') %}
                
                    {% if show %}
                        <div class="slidebrand w-slide">
                            <a href="{{ link }}" class="logobrandlink w-inline-block">
                                <img src="{{ ('product_brand_' ~ i ~ '.jpg') | static_url }}"  loading="lazy"  alt="{{ alt }}"  class="marcaimg">
                            </a>
                        </div>
                    {% endif %}
                {% endfor %}
            </div>
  
            <div class="arrowslider hiddenmobile w-slider-arrow-left">
                <div class="iconslidermain w-icon-slider-left"></div>
            </div>
            <div class="arrowslider hiddenmobile w-slider-arrow-right">
                <div class="iconslidermain w-icon-slider-right"></div>
            </div>
            <div class="navbrands w-slider-nav w-slider-nav-invert w-round"></div>
        </div>

      </div>
    </div>

    <div class="modulereviews">
      <div class="customcontainer">
        <div class="secctitles">
          <h2 class="maintitle">Clientes felices 😀</h2>
          <div class="linetitle"></div>
        </div>
        <div class="containerloox w-embed"></div>
      </div>
    </div>

</div>

<style>
    ul.breadcrumbs.arbol-navegacion.vip {
        justify-content: flex-start;
    }

    .swiper-wrapper {
        max-height: 600px;
    }

    .vipImage {
        max-height: 600px;
        object-fit: cover;
    }

    .w-row.section-single-product {
        margin: 0;
    }

    @media screen and (max-width: 479px) {
        ul.breadcrumbs.arbol-navegacion.vip {
            display: inline-block !important;
        }

        li.list-item-arbollist-item-arbol {
            margin-top: 10px;
        }

        ul.breadcrumbs.arbol-navegacion.vip {
            padding-top: 0px;
        }

        .contsocial-media {
            padding-top: 10px;
        }

        .containershare {
            width: 300px !important;
        }

        .cont-variacion.js-product-variants-group.col-12.mb-2.text-center.text-md-left {
            display: flex;
            justify-content: flex-start;
        }
    }



</style>
