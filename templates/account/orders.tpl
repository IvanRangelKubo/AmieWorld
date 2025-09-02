
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

                        <div class="rowtitlepedidos w-row">
                        <div class="w-col w-col-2 w-col-small-2">
                            <div class="titlecol-pedido">Pedido</div>
                        </div>
                        <div class="w-col w-col-10 w-col-small-10">
                            <div class="w-row">
                            <div class="w-col w-col-3 w-col-small-3">
                                <div class="titlecol-pedido">Fecha</div>
                            </div>
                            <div class="w-col w-col-3 w-col-small-3">
                                <div class="titlecol-pedido">Estatus del pedido</div>
                            </div>
                            <div class="w-col w-col-3 w-col-small-3">
                                <div class="titlecol-pedido">Estatus del pago</div>
                            </div>
                            <div class="w-col w-col-3 w-col-small-3">
                                <div class="titlecol-pedido">Total</div>
                            </div>
                            </div>
                        </div>
                        </div>

                        {% if customer.orders %}
                        {% for order in customer.orders %}
                            <div class="rowpedido w-row" data-store="account-order-item-{{ order.id }}">
                            <div class="w-col w-col-2 w-col-small-2">
                                <a href="{{ store.customer_order_url(order) }}" class="pedidonumero">#{{ order.number }}</a>
                            </div>
                            <div class="w-col w-col-10 w-col-small-10">
                                <div class="infopedido-datos w-row">
                                <div class="w-col w-col-3">
                                    <div class="infopedido-list">{{ order.date | i18n_date('%d/%m/%Y') }}</div>
                                </div>
                                <div class="w-col w-col-3">
                                    <div class="infopedido-list">
                                    {{ (order.shipping_status == 'fulfilled' ? 'Entregado' : 'No enviado') | translate }}
                                    </div>
                                </div>
                                <div class="w-col w-col-3">
                                    <div class="infopedido-list">
                                    {{ (order.payment_status == 'pending'? 'Pendiente' : 
                                        (order.payment_status == 'authorized'? 'Autorizado' : 
                                        (order.payment_status == 'paid'? 'Pagado' : 
                                        (order.payment_status == 'voided'? 'Cancelado' : 
                                        (order.payment_status == 'refunded'? 'Reintegrado' : 'Abandonado'))))) | translate }}
                                    </div>
                                </div>
                                <div class="w-col w-col-3">
                                    <div class="infopedido-list">{{ order.total | money }}</div>
                                </div>
                                </div>



                            </div>
                            </div>
                        {% endfor %}
                        {% else %}
                        <div class="rowpedido w-row">
                            <div class="w-col w-col-12 text-center">
                            <hr class="divider mt-0">
                            {% include "snipplets/svg/shopping-bag.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-text"} %}
                            <p class="mt-2">{{ '¡Hacé tu primera compra!' | translate }}</p>
                            {{ 'Ir a la tienda' | translate | a_tag(store.url, '', 'btn-link') }}
                            </div>
                        </div>
                        {% endif %}

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

    .card {
        border: 1px solid var(--lighterpink);
    }

    .btn.btn-primary.loginpopbtn.w-button {
        letter-spacing: normal;
        text-transform: none;
        margin-top: 0;
    }
</style>