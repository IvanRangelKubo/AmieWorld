 
  <div class="seccgarantias">
    <div class="customcontainer">

      <div data-delay="2000" data-animation="cross" class="warrantyslide w-slider" data-autoplay="true" data-easing="ease-in-out" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="300" data-infinite="true">
        <div class="maskwarranty w-slider-mask">

          {% if settings.banner_services_01_description %}
              <div class="garantiaslide w-slide">
                <div class="continfowarranty orange">
                  <img loading="lazy" src="{{ 'icon1.jpg' | static_url }}" class="iconwarranty">
                  <p class="infowarranty">{{ settings.banner_services_01_description | raw  }}</p>
                </div>
              </div>
          {% endif %}

          {% if settings.banner_services_02_description %}
              <div class="garantiaslide w-slide">
                <div class="continfowarranty violetblue">
                <img loading="lazy" src="{{ 'icon2.jpg' | static_url }}" class="iconwarranty">
                <p class="infowarranty">{{ settings.banner_services_02_description | raw  }}</p>
                </div>
              </div>
          {% endif %}

          {% if settings.banner_services_03_description %}
              <div class="garantiaslide w-slide">
                <div class="continfowarranty yellow">
                  <img loading="lazy" src="{{ 'icon3.jpg' | static_url }}" class="iconwarranty">
                  <p class="infowarranty">{{ settings.banner_services_03_description | raw  }}</p>
                </div>
              </div>
          {% endif %}

        </div>

        <div class="garantiasarrow w-slider-arrow-left">
          <div class="w-icon-slider-left"></div>
        </div>
        <div class="garantiasarrow w-slider-arrow-right">
          <div class="w-icon-slider-right"></div>
        </div>
        <div class="warrantyslidenav w-slider-nav w-slider-nav-invert w-round"></div>

      </div>
    </div>
  </div>