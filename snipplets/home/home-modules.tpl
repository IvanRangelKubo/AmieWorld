  <div class="secctiendasoficiales">
    <div class="custom-container">
      <div id="w-node-_536fd8d5-3d21-cf38-2caf-69d4af28366e-ba5351bb" class="w-layout-layout stack-stores wf-layout-layout">

        <div id="w-node-_536fd8d5-3d21-cf38-2caf-69d4af28366f-ba5351bb" class="w-layout-cell cellcolorstores">
          <div class="storehours">
            <h5 class="store-name white">{{ settings.stores_title }}</h5>
            <p class="infotiendas">{{ settings.stores_description }}<br><br>Lunes a Viernes: <br>{{ settings.week_time }}<br><br>Sábados y Domingos<br>{{ settings.weekend_time }}</p>
          </div>
        </div>

        <div id="w-node-_536fd8d5-3d21-cf38-2caf-69d4af283670-ba5351bb" class="w-layout-cell cellinfomaps">
          <div data-delay="4000" data-animation="slide" class="stores-slider w-slider" data-autoplay="false" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
            <div class="w-slider-mask">

              {% if settings.store_1_name %}
                <div class="storeslide w-slide">
                  <div class="containerstore-item">
                    <h5 class="store-name">{{ settings.store_1_name }}</h5>
                    <p class="storeadress">{{ settings.store_1_address }}</p>
                    <a href="{{ settings.store_1_link }}" target="_blank" class="linkmap w-inline-block">
                    <img src="{{ "store1.jpg" | static_url }}" loading="lazy" class="mapimg"></a>
                    <a href="{{ settings.store_1_link }}" target="_blank" class="btntienda w-button">CÓMO LLEGAR</a>
                  </div>
                </div>
              {% endif %}

              {% if settings.store_2_name %}
                <div class="storeslide w-slide">
                  <div class="containerstore-item">
                    <h5 class="store-name">{{ settings.store_2_name }}</h5>
                    <p class="storeadress">{{ settings.store_2_address }}</p>
                    <a href="{{ settings.store_2_link }}" target="_blank" class="linkmap w-inline-block">
                    <img src="{{ "store2.jpg" | static_url }}" loading="lazy" class="mapimg"></a>
                    <a href="{{ settings.store_2_link }}" target="_blank" class="btntienda w-button">CÓMO LLEGAR</a>
                  </div>
                </div>
              {% endif %}

              {% if settings.store_3_name %}
                <div class="storeslide w-slide">
                  <div class="containerstore-item">
                    <h5 class="store-name">{{ settings.store_3_name }}</h5>
                    <p class="storeadress">{{ settings.store_3_address }}</p>
                    <a href="{{ settings.store_3_link }}" target="_blank" class="linkmap w-inline-block">
                    <img src="{{ "store3.jpg" | static_url }}" loading="lazy" class="mapimg"></a>
                    <a href="{{ settings.store_3_link }}" target="_blank" class="btntienda w-button">CÓMO LLEGAR</a>
                  </div>
                </div>
              {% endif %}

            </div>

            <div class="storesarrow w-slider-arrow-left">
              <div class="w-icon-slider-left"></div>
            </div>
            <div class="storesarrow w-slider-arrow-right">
              <div class="w-icon-slider-right"></div>
            </div>
            <div class="navigationdots stores w-slider-nav w-round"></div>

          </div>
        </div>
      </div>
    </div>
  </div>