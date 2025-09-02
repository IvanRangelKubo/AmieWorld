
<section class="seccmicuenta">
    <div class="customcontainer" data-store="account-order-detail-{{ order.id }}">
    	<div class="elementos-cuenta">

            <div class="secctitles internas">
                <h1 class="maintitle internas">ORDEN: <span class="redtxttitle">#{{order.number}}</span>🌟</h1>
                <div class="linetitle"></div>
            </div>

            <div class="contbtncuenta">
                <a href="/account" class="btnmicuenta w-button">Regresar</a>
            </div>

            <div class="row-pedidos w-row" >
                <div class="w-col w-col-3">

                    <div class="contdetail-account">
                        <h4 class="titles-micuenta">{{ 'Detalles' | translate }}</h4>
                    </div>
                    
                    <div class="cont-infodirecc w-clearfix">
                        <div class="infodireccion">
                            <span class="d-block">
                                <strong>{{'Fecha' | translate}}:</strong> {{ order.date | i18n_date('%d/%m/%Y') }}
                            </span>
                            <span class="d-block">
                                <strong>{{'Estado' | translate}}:</strong> {{ (order.status == 'open'? 'Abierta' : (order.status == 'closed'? 'Cerrada' : 'Cancelada')) | translate }}
                            </span>
                            <span class="d-block">
                                <strong>{{'Pago' | translate}}:</strong> {{ (order.payment_status == 'pending'? 'Pendiente' : (order.payment_status == 'authorized'? 'Autorizado' : (order.payment_status == 'paid'? 'Pagado' : (order.payment_status == 'voided'? 'Cancelado' : (order.payment_status == 'refunded'? 'Reintegrado' : 'Abandonado'))))) | translate }}
                            </span>
                            <span class="d-block">
                                <strong>{{'Medio de pago' | translate}}:</strong> {{ order.payment_name }}
                            </span>
                            {% if order.address %}
                                <span class="d-block">
                                    <strong>{{'Envío' | translate}}:</strong> {{ (order.shipping_status == 'fulfilled'? 'Enviado' : 'No enviado') | translate }}
                                </span>
                                <span class="d-block">
                                    <strong>{{ 'Dirección de envío' | translate }}:</strong>
                                    <span class="d-block">
                                        {{ order.address | format_address }}
                                    </span>
                                </span>
                            {% endif %}
                        </div>
                    </div>

                </div>

                <div class="colhistorial w-col w-col-9">
                    <div class="container-list-pedido">
                        <h4 class="titles-micuenta">{{ 'Productos' | translate }}</h4>

                        <div class="rowtitlepedidos w-row">
                            <div class="w-col w-col-2 w-col-small-2">
                                <div class="titlecol-pedido">{{ 'Producto' | translate }}</div>
                            </div>
                            <div class="w-col w-col-10 w-col-small-10">
                                <div class="w-row">
                                <div class="w-col w-col-4 w-col-small-4">
                                    <div class="titlecol-pedido">{{ 'Precio' | translate }}</div>
                                </div>
                                <div class="w-col w-col-4 w-col-small-4">
                                    <div class="titlecol-pedido">{{ 'Cantidad' | translate }}</div>
                                </div>
                                <div class="w-col w-col-4 w-col-small-4">
                                    <div class="titlecol-pedido">{{ 'Total' | translate }}</div>
                                </div>
                                </div>
                            </div>
                        </div>

                        {% for item in order.items %}
                        <div class="rowpedido w-row">
                            <div class="w-col w-col-2 w-col-small-2">
                            <a href="{{ item.url }}" class="pedidonumero">
                                <strong>{{ item.name }}</strong>
                            </a>
                            </div>
                            <div class="w-col w-col-10 w-col-small-10">
                            <div class="infopedido-datos w-row">
                                <div class="w-col w-col-4">
                                <div class="infopedido-list">{{ item.unit_price | money }}</div>
                                </div>
                                <div class="w-col w-col-4">
                                <div class="infopedido-list">{{ item.quantity }}</div>
                                </div>
                                <div class="w-col w-col-4">
                                <div class="infopedido-list">{{ item.subtotal | money }}</div>
                                </div>
                            </div>
                            </div>
                        </div>
                        {% else %}
                        <div class="rowpedido w-row">
                            <div class="w-col w-col-12 text-center">
                            <p>{{ 'No hay productos en este pedido' | translate }}</p>
                            </div>
                        </div>
                        {% endfor %}

                    </div>
                </div>


            </div>

                                            {# Botones de acción #}
            {% if order.pending %}
            <a class="btn btn-primary d-block loginpopbtn w-button mt-2" 
                href="{{ order.checkout_url | add_param('ref', 'orders_list') }}" target="_blank">
                {{ 'Realizar pago' | translate }}
            </a>
            {% elseif order.order_status_url %}
            <a class="btn btn-primary d-block loginpopbtn w-button mt-2" 
                href="{{ order.order_status_url | add_param('ref', 'orders_list') }}" target="_blank">
                {% if 'Correios' in order.shipping_name %}
                {{ 'Seguí la entrega' | translate }}
                {% else %}
                {{ 'Seguí tu orden' | translate }}
                {% endif %}
            </a>
            {% endif %}

    	</div>
    </div>
</section>

<style>
    .card {
        border: 1px solid var(--lighterpink);
    }

    a.btn.btn-primary.d-block.loginpopbtn.w-button.mt-2 {
        letter-spacing: normal;
        text-transform: none;
        width: fit-content;
    }
</style>