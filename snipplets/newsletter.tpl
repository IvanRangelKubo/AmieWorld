{% set newsletter_contact_error = contact.type == 'newsletter' and not contact.success %}


    <div class="w-layout-cell">
        <div class="js-newsletter newsletter section-footer infocolfooter">

            {% if settings.news_title %}
                <h5 class="footertitle" ><strong>{{ settings.news_title }}</strong></h5>
            {% endif %}

            <div class="subscriptionform w-form" >
                <form method="post" action="/winnie-pooh" onsubmit="this.setAttribute('action', '');" data-store="newsletter-form">
                    {% if settings.news_text %}
                        <p class="txtregularfooter" >{{ settings.news_text }}</p>
                    {% endif %}
                    <div class=" inputcontnews">
                    
                        <input type="submit" name="contact" class="btn newsletter-btn suscribebtn w-button" style="color: transparent;" value='{{ "Enviar" | translate }}'>
                        <input type="email" id="email" class=" form-control inputsuscription w-input" autocorrect="off" autocapitalize="off" name="email" placeholder="Ingresa aquí tu email" aria-label="Correo electrónico" required="">
                
                        <div class="winnie-pooh" style="display: none;">
                            <label for="winnie-pooh-newsletter">{{ "No completar este campo" | translate }}</label>
                            <input id="winnie-pooh-newsletter" type="text" name="winnie-pooh"/>
                        </div>
                        <input type="hidden" name="name" value="{{ "Sin nombre" | translate }}" />
                        <input type="hidden" name="message" value="{{ "Pedido de inscripción a newsletter" | translate }}" />
                        <input type="hidden" name="type" value="newsletter" /> 
                    </div>
                </form>
            </div>
            
        </div>
    </div>

