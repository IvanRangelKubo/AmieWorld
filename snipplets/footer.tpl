  <div class="customfooter">
    <div class="customcontainer">

      <div id="w-node-_0737ae8c-1141-924f-e9ac-aff72f07025a-2f070258" class="w-layout-layout footerstack wf-layout-layout">

        <div id="w-node-_0737ae8c-1141-924f-e9ac-aff72f07025b-2f070258" class="w-layout-cell celinfofooter">

          <a href="{{ store.url }}" class="linklogofooter w-inline-block">
						<img src="{{ "logo_footer.jpg" | static_url }}"  alt="Amie World" class="logofooter">
					</a>


          <div class="colfooter">
            <h5 data-w-id="0737ae8c-1141-924f-e9ac-aff72f070260" class="footertiltulo">{{ settings.menu_1_name }}</h5>
            <div class="cont-items-footer">
              <ul role="list" class="items-footer">
								{% for item in menus[settings.footer_menu_1] %}
									<li class="item-list-footer">
										<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlink">{{ item.name }}</a>
									</li>
								{% endfor %}
              </ul>
            </div>
          </div>

          <div class="colfooter">
            <h5 data-w-id="0737ae8c-1141-924f-e9ac-aff72f070275" class="footertiltulo">{{ settings.menu_2_name }}</h5>
            <div class="cont-items-footer">
              <ul role="list" class="items-footer">
								{% for item in menus[settings.footer_menu_2] %}
									<li class="item-list-footer">
										<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlink">{{ item.name }}</a>
									</li>
								{% endfor %}
              </ul>
            </div>
          </div>

          <div class="colfooter">
            <h5 data-w-id="0737ae8c-1141-924f-e9ac-aff72f070287" class="footertiltulo">{{ settings.menu_3_name }}</h5>
            <div class="cont-items-footer">
              <ul role="list" class="items-footer">
								{% for item in menus[settings.footer_menu_3] %}
									<li class="item-list-footer">
										<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlink">{{ item.name }}</a>
									</li>
								{% endfor %}
              </ul>
            </div>
          </div>

        </div>

        <div id="w-node-_0737ae8c-1141-924f-e9ac-aff72f07025e-2f070258" class="w-layout-cell cellnewsfooter">

          <div class="colfooter social">

            <h5 class="footertiltulo noarrow">SÍGUENOS</h5>
            <div class="cont-items-footer visible">
              <ul role="list" class="items-footer">
                <li class="item-list-footer contact">

									{% if settings.tiktok_url %}
										<a href="{{ settings.tiktok_url }}" target="_blank" class="footerlink w-inline-block">
											<img src="{{ "images/icon_tiktok.svg" | static_url }}" alt="TikTok" class="footericon">
										</a>
									{% endif %}

									{% if settings.instagram_url %}
										<a href="{{ settings.instagram_url }}" target="_blank" class="footerlink w-inline-block">
											<img src="{{ "images/icon_instagram.svg" | static_url }}" alt="Instagram" class="footericon">
										</a>
									{% endif %}

									{% if settings.facebook_url %}
										<a href="{{ settings.facebook_url }}" class="footerlink w-inline-block">
											<img src="{{ "images/icon_meta.svg" | static_url }}" alt="Facebook" class="footericon">
										</a>
									{% endif %}

                </li>
              </ul>
            </div>

						{% include "snipplets/newsletter.tpl" %}

          </div>
					
        </div>
				
      </div>
      
      <div class="copyright">
        <div id="w-node-_0737ae8c-1141-924f-e9ac-aff72f0702bd-2f070258" class="w-layout-layout stackcopyr wf-layout-layout">
          <div id="w-node-_0737ae8c-1141-924f-e9ac-aff72f0702be-2f070258" class="w-layout-cell">
            <div class="copytxt" id="copy">© Amie World -  Developed &amp; Designed by <a href="https://www.kubodigital.mx" class="linkd">Kubo Digital</a></div>
						<div style=" display: flex; flex-direction: row; justify-content: center; ">{{ new_powered_by_link }}</div>
          </div>
					
          <div class="w-layout-cell">
            <div class="contlogospagos">
							<img  src="{{ "pago1.jpg" | static_url }}" alt="{{ settings.pago1_alt}}" class="mediopago">
							<img  src="{{ "pago2.jpg" | static_url }}" alt="{{ settings.pago2_alt}}" class="mediopago">
							<img  src="{{ "pago3.jpg" | static_url }}" alt="{{ settings.pago3_alt}}" class="mediopago">
							<img  src="{{ "pago4.jpg" | static_url }}" alt="{{ settings.pago4_alt}}" class="mediopago">
							<img  src="{{ "pago5.jpg" | static_url }}" alt="{{ settings.pago5_alt}}" class="mediopago">
							<img  src="{{ "pago6.jpg" | static_url }}" alt="{{ settings.pago6_alt}}" class="mediopago">
						</div>
          </div>
        </div>
      </div>
      
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
