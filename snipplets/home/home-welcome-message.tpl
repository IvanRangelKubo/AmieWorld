  <div class="seccmarcas">
    <div class="customcontainer">

      <div class="secctitles">
        <h1 class="maintitle center">{{ settings.brands_section_title }}</h1>
      </div>

      <div data-delay="4000" data-animation="slide" class="slidermarcas w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
        <div class="brandsmask w-slider-mask">

          {% if settings.link_1  %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_1 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono1.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if ettings.link_2 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_2 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono2.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_3 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_3 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono3.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_4 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_4 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono4.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_5 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_5 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono5.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_6 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_6 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono6.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_7 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_7 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono7.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_8 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_8 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono8.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

          {% if settings.link_9 %}
            <div class="slidebrand w-slide">
              <a href="{{ settings.link_9 }}" class="logobrandlink w-inline-block">
                <img src="{{ "icono9.jpg" | static_url }}"  alt="" class="marcaimg">
              </a>
            </div>
          {% endif %}

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