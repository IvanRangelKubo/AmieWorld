 
  <div class="seccgarantias">
    <div class="custom-container">

      <div class="maintitle-cont">
        <h2 class="maintitle">{{ settings.banner_services_title | raw }}</h2>
      </div>

      <div data-delay="4000" data-animation="cross" class="warrantyslide w-slider" data-autoplay="true" data-easing="ease-in-out" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
        <div class="maskgarantias w-slider-mask">

          {% if settings.banner_services_01_title %}
              <div class="garantiaslide w-slide">
                <div class="continfowarranty">
                  <img loading="lazy" src="{{ 'icon1.jpg' | static_url }}" alt="icon autenticidad" class="iconwarranty">
                  <div class="infow">
                    <h5 class="subtitlewarrt">{{ settings.banner_services_01_title }}</h5>
                    <p class="infowarranty">{{ settings.banner_services_01_description }}</p>
                  </div>
                </div>
              </div>
          {% endif %}

          {% if settings.banner_services_02_title %}
              <div class="garantiaslide w-slide">
                <div class="continfowarranty">
                <img loading="lazy" src="{{ 'icon2.jpg' | static_url }}" alt="icon autenticidad" class="iconwarranty">
                  <div class="infow">
                    <h5 class="subtitlewarrt">{{ settings.banner_services_02_title }}</h5>
                    <p class="infowarranty">{{ settings.banner_services_02_description }}</p>
                  </div>
                </div>
              </div>
          {% endif %}

          {% if settings.banner_services_03_title %}
              <div class="garantiaslide w-slide">
                <div class="continfowarranty">
                <img loading="lazy" src="{{ 'icon3.jpg' | static_url }}" alt="icon autenticidad" class="iconwarranty">
                  <div class="infow">
                    <h5 class="subtitlewarrt">{{ settings.banner_services_03_title }}</h5>
                    <p class="infowarranty">{{ settings.banner_services_03_description }}</p>
                  </div>
                </div>
              </div>
          {% endif %}

        </div>

        <div class="arrowsgarantias w-slider-arrow-left">
          <div class="w-icon-slider-left"></div>
        </div>
        <div class="arrowsgarantias w-slider-arrow-right">
          <div class="w-icon-slider-right"></div>
        </div>
        <div class="warrantyslidenav w-slider-nav w-slider-nav-invert w-round"></div>

      </div>
    </div>
  </div>