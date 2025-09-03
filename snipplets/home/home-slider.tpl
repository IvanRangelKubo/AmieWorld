<div data-delay="4000" data-animation="cross" class="mainslider w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="1500" data-infinite="true">
	<div class="w-slider-mask">
	{% for image in settings.slider %}
		<div class="slidebanner w-slide">
			<a href="{{ image.link }}" class="linkbannerslider w-inline-block">
				<img alt="{{ image.title }}" src="{{ image.image | static_url }}" loading="lazy" class="bannerimgslider">
			</a>
		</div>
	{% endfor %}
	</div>
	<div class="arrowslider w-slider-arrow-left">
		<div class="iconslidermain w-icon-slider-left"></div>
	</div>
	<div class="arrowslider w-slider-arrow-right">
		<div class="iconslidermain w-icon-slider-right"></div>
	</div>
	<div class="mainslidenav w-slider-nav w-slider-nav-invert w-round"></div>
</div>

<div data-delay="4000" data-animation="cross" class="mainslider mobile w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="1500" data-infinite="true">
	<div class="w-slider-mask">
	{% for image in settings.slider_mobile %}
			<div class="slidebanner w-slide">
				<a href="{{ image.link }}" class="linkbannerslider w-inline-block">
					<img alt="{{ image.title }}" src="{{ image.image | static_url }}" loading="lazy" class="bannerimgslider">
				</a>
			</div>
	{% endfor %}
	</div>
	<div class="arrowslider w-slider-arrow-left">
		<div class="iconslidermain w-icon-slider-left"></div>
	</div>
	<div class="arrowslider w-slider-arrow-right">
		<div class="iconslidermain w-icon-slider-right"></div>
	</div>
	<div class="mainslidenav w-slider-nav w-slider-nav-invert w-round"></div>
</div>