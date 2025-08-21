<div data-delay="4000" data-animation="slide" class="mainslider w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
	<div class="w-slider-mask">
	{% for image in settings.slider %}
		<div class="element-slide w-slide">
			<a href="{{ image.link }}" class="linkmainbanner w-inline-block">
				<img alt="{{ image.alt }}" src="{{ image.image | static_url }}" loading="lazy" class="bannerimg">
			</a>
		</div>
	{% endfor %}
	</div>
	<div class="arrowmainslider w-slider-arrow-left">
		<div class="w-icon-slider-left"></div>
	</div>
	<div class="arrowmainslider w-slider-arrow-right">
		<div class="w-icon-slider-right"></div>
	</div>
	<div class="navigationdots w-slider-nav w-round"></div>
</div>

<div data-delay="4000" data-animation="cross" class="mainslider mobile w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="true" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
	<div class="w-slider-mask">
	{% for image in settings.slider_mobile %}
			<div class="element-slide w-slide">
				<a href="{{ image.link }}" class="linkmainbanner w-inline-block">
					<img alt="{{ image.alt }}" src="{{ image.image | static_url }}" loading="lazy" class="bannerimg">
				</a>
			</div>
	{% endfor %}
	</div>
	<div class="arrowmainslider w-slider-arrow-left">
		<div class="w-icon-slider-left"></div>
	</div>
	<div class="arrowmainslider w-slider-arrow-right">
		<div class="w-icon-slider-right"></div>
	</div>
	<div class="navigationdots w-slider-nav"></div>
</div>