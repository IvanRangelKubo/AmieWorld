
<section class="seccinternas">
    <div class="custom-container" data-store="account-order-detail-{{ order.id }}">
    	<div class="elementos-cuenta">

            <div class="maintitle-cont">
                <h2 class="maintitle">ORDEN: <span class="redtxttitle">#{{order.number}}</span></h2>
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

                <div class="w-col w-col-9">
                    <div class="container-list-pedido">
                        <h4 class="titles-micuenta">{{ 'Productos' | translate }}</h4>
                        <hr class="divider my-3 d-none d-md-block">
                        <div class="order-detail">
                            {% embed "snipplets/card.tpl" %}
                                {% block card_head %}
                                    <div class="d-none d-md-block">
                                        <div class="row">
                                            <div class="col-md-7">
                                                {{ 'Producto' | translate }}
                                            </div>
                                            <div class="col-md-5">
                                                <div class="row">
                                                    <div class="col-4 text-center">
                                                        {{ 'Precio' | translate }}
                                                    </div>
                                                    <div class="col-4 text-center">
                                                        {{ 'Cantidad' | translate }}
                                                    </div>
                                                    <div class="col-4 text-center">
                                                        {{ 'Total' | translate }}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {% endblock %}
                                {% block card_body %}
                                    {% for item in order.items %}
                                        <div class="row align-items-center{% if not loop.last %} pb-3{% endif %}">
                                            <div class="col-5 col-md-2">
                                                <div class="card-img-square-container">
                                                    {{ item.featured_image | product_image_url("small") | img_tag(item.featured_image.alt, {class: 'card-img-square'}) }}
                                                </div>
                                            </div>
                                            <div class="col-7 col-md-10">
                                                <div class="row align-items-center">
                                                    <div class="col-12 col-md-6">
                                                        <p>
                                                            <strong>{{ item.name }}</strong> <span class="d-inline-block d-md-none">x{{ item.quantity }}</span>
                                                        </p>
                                                    </div>
                                                    <div class="col-md-2 d-none d-md-block text-md-center">
                                                        <p>
                                                            {{ item.unit_price | money }}
                                                        </p>
                                                    </div>
                                                    <div class="col-md-2 d-none d-md-block text-md-center">
                                                        <p>
                                                            {{ item.quantity }}
                                                        </p>
                                                    </div>
                                                    <div class="col-12 col-md-2 text-md-center">
                                                        <p>
                                                            {{ item.subtotal | money }}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                                    
                                        </div>
                                    {% endfor %}
                                {% endblock %}
                            {% endembed %}
                        </div>
                    </div>
                </div>
            </div>

    	</div>
    </div>
</section>