{% set newsletter_contact_error = contact.type == 'newsletter' and not contact.success %}

    {% if settings.news_title %}
        <h6 class="titlenews">{{ settings.news_title }}</h6>
    {% endif %}

    {% if settings.news_text %}
        <p class="pnews">{{ settings.news_text }}</p>
    {% endif %}
    
    
    <div class="js-newsletter newsletter section-footer newsformulario w-form">
        <form class="suscribenews" method="post" action="/winnie-pooh" onsubmit="this.setAttribute('action', '');" data-store="newsletter-form" >
            
            <div class="itemsnews">
                <input type="email" id="email" autocorrect="off" autocapitalize="off" name="email" class="mailsucribinput w-input" placeholder="Escribe tu correo aquí" raria-label="Correo electrónico" required="">
                <input type="submit" name="contact" class="suscribirbtn w-button" value='{{ "SUSCRIBIRME" | translate }}' >
            </div>

            <label class="w-checkbox accept-tyc">
                <div class="w-checkbox-input w-checkbox-input--inputType-custom termscheckbopx"></div>
                <input type="checkbox" name="Checkbox" id="Checkbox" data-name="Checkbox" required="" style="opacity:0;position:absolute;z-index:-1" oninvalid="this.setCustomValidity('Marque esta casilla si desea continuar')" oninput="this.setCustomValidity('')" >
                <span class="labelcheck-tyc w-form-label" for="Checkbox">Al suscribirte aceptas el <a href="/pages/aviso-de-privacidad" target="_blank" class="tycregister-labellink"> Aviso de privacidad.</a></span>
            </label>

            <div class="winnie-pooh" style="display: none;">
                <label for="winnie-pooh-newsletter">{{ "No completar este campo" | translate }}</label>
                <input id="winnie-pooh-newsletter" type="text" name="winnie-pooh"/>
            </div>
            <input type="hidden" name="name" value="{{ "Sin nombre" | translate }}" />
            <input type="hidden" name="message" value="{{ "Pedido de inscripción a newsletter" | translate }}" />
            <input type="hidden" name="type" value="newsletter" /> 

        </form>
    </div>

