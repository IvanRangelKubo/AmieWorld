  <div class="seccboletos">
    <div class="custom-container">

      <div data-delay="4000" data-animation="cross" class="mainslider w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
        <div class="w-slider-mask">
          <div class="element-slide w-slide">
            <a href="{{settings.link_message}}" class="linkmainbanner w-inline-block">
            <img alt="" src="{{ "banner_boletos_opt.jpg" | static_url }}" class="bannerimg"></a>
          </div>
        </div>
        <div class="arrowmainslider secundario w-slider-arrow-left">
          <div class="w-icon-slider-left"></div>
        </div>
        <div class="arrowmainslider secundario w-slider-arrow-right">
          <div class="w-icon-slider-right"></div>
        </div>
        <div class="navigationdots secundario w-slider-nav w-round"></div>
      </div>

      <div data-delay="4000" data-animation="cross" class="mainslider mobile w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="true" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
        <div class="w-slider-mask">
          <div class="element-slide w-slide">
            <a href="{{settings.link_message}}" class="linkmainbanner w-inline-block">
            <img src="{{ "banner_boletos_mobile_opt.jpg" | static_url }}"  alt="" class="bannerimg"></a>
          </div>
        </div>
        <div class="arrowmainslider w-slider-arrow-left">
          <div class="w-icon-slider-left"></div>
        </div>
        <div class="arrowmainslider w-slider-arrow-right">
          <div class="w-icon-slider-right"></div>
        </div>
        <div class="mainslider-nav w-slider-nav w-round"></div>
      </div>

    </div>
  </div>