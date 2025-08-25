  <div class="seccreviews">
    <div class="customcontainer">

      <div class="secctitles">
        <div class="linetitle"></div>
        <h1 class="maintitle">{{ settings.reviews_section_title }}</h1>
        <div class="linetitle"></div>
      </div>

      <div data-delay="4000" data-animation="slide" class="reviewslider w-slider" data-autoplay="false" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
        <div class="maskreview w-slider-mask">

          {% if settings.review_01_show %}
            <div class="slideopinion w-slide">
              <div class="conthomereview">
                <div class="reviewnombre">⭐️⭐️⭐️⭐️⭐️ {{ settings.review_name_1 }} | {{ settings.review_city_1 }}</div>
                <p class="reviewhome">{{ settings.review_1 }}</p>
              </div>
            </div>
          {% endif %}

          {% if settings.review_02_show %}
          <div class="slideopinion w-slide">
            <div class="conthomereview">
              <div class="reviewnombre">⭐️⭐️⭐️⭐️⭐ {{ settings.review_name_2 }} | {{ settings.review_city_2 }}</div>
              <p class="reviewhome">{{ settings.review_2 }}</p>
            </div>
          </div>
          {% endif %}

          {% if settings.review_03_show %}
            <div class="slideopinion w-slide">
              <div class="conthomereview">
                <div class="reviewnombre">⭐️⭐️⭐️⭐️⭐ {{ settings.review_name_3 }} | {{ settings.review_city_3 }}</div>
                <p class="reviewhome">{{ settings.review_3 }}</p>
              </div>
            </div>
          {% endif %}

          {% if settings.review_04_show %}
            <div class="slideopinion w-slide">
              <div class="conthomereview">
                <div class="reviewnombre">⭐️⭐️⭐️⭐️⭐ {{ settings.review_name_4 }} | {{ settings.review_city_4 }}</div>
                <p class="reviewhome">{{ settings.review_4 }}</p>
              </div>
            </div>
          {% endif %}

          {% if settings.review_05_show %}
            <div class="slideopinion w-slide">
              <div class="conthomereview">
                <div class="reviewnombre">⭐️⭐️⭐️⭐️⭐ {{ settings.review_name_5 }} | {{ settings.review_city_5 }}</div>
                <p class="reviewhome">{{ settings.review_5 }}</p>
              </div>
            </div>
          {% endif %}

          {% if settings.review_06_show %}
            <div class="slideopinion w-slide">
              <div class="conthomereview">
                <div class="reviewnombre">⭐️⭐️⭐️⭐️⭐ {{ settings.review_name_6 }} | {{ settings.review_city_6 }}</div>
                <p class="reviewhome">{{ settings.review_6 }}</p>
              </div>
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