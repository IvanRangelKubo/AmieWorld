<div class="customfooter">

	<a href="{{ store.url }}" class="logofooter w-inline-block">
		<img src="{{ "logo_footer.jpg" | static_url }}" loading="lazy" alt="" class="escudofooter">
	</a>

	<div class="custom-container">
		<div id="w-node-abf9476f-c460-dfd6-4453-3f0845eb2446-45eb2442" class="w-layout-layout footerstack wf-layout-layout">

			<div id="w-node-abf9476f-c460-dfd6-4453-3f0845eb2447-45eb2442" class="w-layout-cell">
				<div class="infocolfooter">
					<h5 class="footertitle">{{ settings.menu_1_name }}</h5>
					<ul role="list" class="listitemsfooter">
						{% for item in menus[settings.footer_menu_1] %}
							<li class="footeritemlist">
								<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlinktxt">{{ item.name }}</a>
							</li>
						{% endfor %}
					</ul>
				</div>
			</div>

			<div id="w-node-abf9476f-c460-dfd6-4453-3f0845eb2458-45eb2442" class="w-layout-cell">
				<div class="infocolfooter">
					<h5 class="footertitle">{{ settings.menu_2_name }}</h5>
					<ul role="list" class="listitemsfooter">
						{% for item in menus[settings.footer_menu_2] %}
							<li class="footeritemlist">
								<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlinktxt">{{ item.name }}</a>
							</li>
						{% endfor %}
					</ul>
				</div>
			</div>

			<div id="w-node-abf9476f-c460-dfd6-4453-3f0845eb2469-45eb2442" class="w-layout-cell">
				<div class="infocolfooter">
					<h5 class="footertitle">SÍGUENOS</h5>
					<ul role="list" class="listitemsfooter">
						<li class="footeritemlist">
							{% if settings.instagram_url %}
								<a href="{{ settings.instagram_url }}" target="_blank" class="linksocial w-inline-block">
									<img src="{{ "images/icon_instagram.svg" | static_url }}" loading="lazy" alt="" class="socialicon">
								</a>
							{% endif %}
							{% if settings.x_url %}
								<a href="{{ settings.x_url }}" target="_blank" class="linksocial w-inline-block">
									<img src="{{ "images/icon_twitter.svg" | static_url }}" loading="lazy" alt="" class="socialicon">
								</a>
							{% endif %}
							{% if settings.facebook_url %}
								<a href="{{ settings.facebook_url }}" class="linksocial w-inline-block">
									<img src="{{ "images/icon_meta.svg" | static_url }}" loading="lazy" alt="" class="socialicon">
								</a>
							{% endif %}
							{% if settings.youtube_url %}
								<a href="{{ settings.youtube_url }}" target="_blank" class="linksocial w-inline-block">
									<img src="{{ "images/icon_youtube.svg" | static_url }}" loading="lazy" alt="" class="socialicon">
								</a>
							{% endif %}
							{% if settings.tiktok_url %}
								<a href="{{ settings.tiktok_url }}" target="_blank" class="linksocial w-inline-block">
									<img src="{{ "images/icon_tiktok.svg" | static_url }}" loading="lazy" alt="" class="socialicon">
								</a>
							{% endif %}
						</li>
					</ul>
				</div>
				<div class="infocolfooter">
					{% if settings.footer_email %}
						<h5 class="footertitle">CONTACTO</h5>
						<ul role="list" class="listitemsfooter">
							<li class="footeritemlist">
								<a href="mailto:{{ settings.footer_email }}" class="footerlinktxt">{{ settings.footer_email }}</a>
							</li>
						</ul>
					{% endif %}
				</div>
			</div>

			{% include "snipplets/newsletter.tpl" %}

		</div>
		<div class="paymentinfocont">
			<h5 class="footertitle center">PAGOS SEGUROS</h5><img src="{{ "pagos.jpg" | static_url }}" loading="lazy" alt="" class="paymentlogos">
		</div>
		<div class="copyright" id="copy">Copyright © Toluca Fútbol Club - Tienda Oficial · Designed and Developed by
			<a href="https://www.kubodigital.mx" target="_blank" class="kdlink">Kubo Digital</a>
		</div>

    <div style=" display: flex; flex-direction: row; justify-content: center; ">{{ new_powered_by_link }}</div>



	</div>
</div>

<script>
	window.addEventListener('load', () => {
const copy = document.getElementById('copy');
const copyIndex = copy.innerHTML.indexOf('©');
const date = new Date();
const year = date.getFullYear();

if (copyIndex !== -1) {
const content = ` ${year}`
copy.innerHTML = copy.innerHTML.replace('©', '©' + content);
}
})
</script>
