
<section class="seccmicuenta">
    <div class="customcontainer">
    
        <div class="contmicuenta">

            <div class="secctitles internas">
                <h1 class="maintitle internas">Mi cuenta 🌟</h1>
                <div class="linetitle"></div>
            </div>

            <div class="contbtncuenta">
                <a href="{{ store.customer_logout_url }}" class="btnmicuenta w-button">Cerrar Sesión</a>
            </div>

            <div class="row-pedidos w-row" >

                <div class="w-col w-col-3">

                    {% if customer.default_address %}
                        <div class="contdetail-account">
                            <h4 class="titles-micuenta">{{ 'Direcciones' | translate }}</h4>
                        </div>
                        <div class="cont-infodirecc w-clearfix" >
                            <div class="infodireccion">
                                
                                    {{ 'MI DIRECCIÓN' | translate }}<br>
                              
                                
                                    {{ customer.default_address | format_address_short }}
                                
                                {{ 'Ver direcciones' | translate | a_tag(store.customer_addresses_url, '', 'btndirecciones w-button') }}
                            </div>
                        </div>
                    {% endif %}

                    <div class="contdetail-account" style="margin-top: 20px;">
                        <h4 class="titles-micuenta">{{ 'Mis datos' | translate }}</h4>
                    </div>

                    <div class="cont-infodirecc w-clearfix">
                        <div class="infodireccion">
                            <span>
                                {{ customer.name }}
                            </span>

                            <span class="d-block">
                                <strong>{{ 'Email' | translate }}:</strong> {{ customer.email }}
                            </span>

                            {% if customer.cpf_cnpj %}
                                <span class="d-block">
                                    <strong>{{ 'DNI / CUIT' | translate }}:</strong> {{ customer.cpf_cnpj | format_id_number(customer.billing_country) }}
                                </span>
                            {% endif %}

                            {% if customer.business_name %}
                                <span class="d-block">
                                    <strong>{{ 'Razón social' | translate }}:</strong> {{ customer.business_name }}
                                </span>
                            {% endif %}

                            {% if customer.trade_name %}
                                <span class="d-block">
                                    <strong>{{ 'Nombre comercial' | translate }}:</strong> {{ customer.trade_name }}
                                </span>
                            {% endif %}

                            {% if customer.state_registration %}
                                <span class="d-block">
                                    <strong>{{ 'Inscripción estatal' | translate }}:</strong> {{ customer.state_registration }}
                                </span>
                            {% endif %}

                            {% if customer.phone %}
                                <span class="d-block">
                                    <strong>{{ 'Teléfono' | translate }}:</strong> {{ customer.phone }}
                                </span>
                            {% endif %}

                            {{ 'Editar' | translate | a_tag(store.customer_info_url, '', 'btndirecciones w-button') }}
                        </div>
                    </div>


                </div>

                <div class="colhistorial w-col w-col-9">
                    <div class="container-list-pedido">

                        <h4 class="titles-micuenta">{{ 'Historial de pedidos' | translate }}</h4>

                        <div class="row mt-3" data-store="account-orders">

                            {% if customer.orders %}

                                {% for order in customer.orders %}
                                    {% set add_checkout_link = order.pending %}
                                    <div class="col-md-6" data-store="account-order-item-{{ order.id }}">
                                        {% embed "snipplets/card.tpl" with{card_footer: true} %}
                                            {% block card_head %}
                                                <div class="row">
                                                    <div class="col text-left">
                                                        <a class="btn-link" href="{{ store.customer_order_url(order) }}">{{'Orden' | translate}} #{{order.number}}</a>
                                                    </div>
                                                    <div class="col text-right">
                                                        <p class="m-0">{{ order.date | i18n_date('%d/%m/%Y') }}</p>
                                                    </div>
                                                </div>
                                            {% endblock %}
                                            {% block card_body %}
                                                <div class="row">
                                                    <div class="col-5">
                                                        <div class="card-img-square-container">
                                                            {% for item in order.items %}
                                                                {% if loop.first %} 
                                                                    {% if loop.length > 1 %} 
                                                                        <span class="card-img-pill label mb-0">{{ loop.length }} {{'Productos' | translate }}</span>
                                                                    {% endif %}
                                                                    {{ item.featured_image | product_image_url("") | img_tag(item.featured_image.alt, {class: 'card-img-square'}) }}
                                                                {% endif %}
                                                            {% endfor %}
                                                        </div>
                                                    </div>
                                                    <div class="col text-left pl-2">
                                                        <p class="mb-2">
                                                            {{'Pago' | translate}}: <strong class="{{ order.payment_status }}">{{ (order.payment_status == 'pending'? 'Pendiente' : (order.payment_status == 'authorized'? 'Autorizado' : (order.payment_status == 'paid'? 'Pagado' : (order.payment_status == 'voided'? 'Cancelado' : (order.payment_status == 'refunded'? 'Reintegrado' : 'Abandonado'))))) | translate }}</strong>
                                                        </p>
                                                        <p class="mb-2">
                                                            {{'Envío' | translate}}: <strong>{{ (order.shipping_status == 'fulfilled'? 'Enviado' : 'No enviado') | translate }}</strong>
                                                        </p>
                                                        <p class="mb-2">
                                                            {{'Total' | translate}}: <strong>{{ order.total | money }}</strong>
                                                        </p>
                                                        <a class="btn-link" href="{{ store.customer_order_url(order) }}">{{'Ver detalle' | translate}}</a>
                                                    </div>
                                                </div>
                                            {% endblock %}
                                            {% block card_foot %}
                                                {% if add_checkout_link %}
                                                    <a class="btn btn-primary d-block" href="{{ order.checkout_url | add_param('ref', 'orders_list') }}" target="_blank">{{'Realizar pago' | translate}}</a>
                                                {% elseif order.order_status_url != null %}
                                                    <a class="btn btn-primary d-block" href="{{ order.order_status_url | add_param('ref', 'orders_list') }}" target="_blank">{% if 'Correios' in order.shipping_name %}{{'Seguí la entrega' | translate}}{% else %}{{'Seguí tu orden' | translate}}{% endif %}</a>
                                                {% endif %}
                                            {% endblock %}
                                        {% endembed %}
                                    </div>
                                {% endfor %}
                            {% else %}
                                <div class="col text-center">
                                    <hr class="divider mt-0">
                                    {% include "snipplets/svg/shopping-bag.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-text"} %}
                                    <p class="mt-2">{{ '¡Hacé tu primera compra!' | translate }}</p>
                                    {{ 'Ir a la tienda' | translate | a_tag(store.url, '', 'btn-link') }}
                                </div>
                            {% endif %}
                        </div>
                        
                    </div>

                </div>

            </div>

        </div>

    </div>
</section>

<style>
    .btndirecciones{
        margin-right: 0;
    }
</style>