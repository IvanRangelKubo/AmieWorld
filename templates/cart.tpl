<div class="seccmicuenta" id="shoppingCartPage" data-minimum="{{ settings.cart_minimum_value }}" data-store="cart-page">
    <div class="customcontainer">
        <div class="contmicuenta">
            <div class="secctitles internas">
                <h1 class="maintitle internas">Mi carrito 🛍️</h1>
                <div class="linetitle"></div>
            </div>

            <form action="{{ store.cart_url }}" method="post" class="cart-body" data-store="cart-form" data-component="cart">
                <div class="cart-body">

                    {# Cart alerts #}

                    {% if error.add %}
                        {{ component('alert', {'type': 'warning', 'message': 'our_components.cart.error_messages.' ~ error.add }) }}
                    {% endif %}
                    {% for error in error.update %}
                        <div class="alert alert-warning">{{ "No podemos ofrecerte {1} unidades de {2}. Solamente tenemos {3} unidades." | translate(error.requested, error.item.name, error.stock) }}</div>
                    {% endfor %}
                    {% if cart.items %}
                        <div class="js-ajax-cart-list cart-row">

                            {# Cart page items #}

                            {% if cart.items %}
                            {% for item in cart.items %}
                                {% include "snipplets/cart-item-ajax.tpl" with {'cart_page': true} %}
                            {% endfor %}
                            {% endif %}
                        </div>
                    {% else %}

                        {#  Empty cart  #}

                        {% if not error %}
                            {{ component('alert', {'type': 'info', 'message': ('El carrito de compras está vacío.' | translate) }) }}
                        {% endif %}
                    {% endif %}
                    <div id="error-ajax-stock" style="display: none;">
                        <div class="alert alert-warning">
                            {{ "¡Uy! No tenemos más stock de este producto para agregarlo al carrito. Si querés podés" | translate }}<a href="{{ store.products_url }}" class="btn-link ml-1">{{ "ver otros acá" | translate }}</a>
                        </div>
                    </div>
                    <div class="cart-row">
                        {% include "snipplets/cart-totals.tpl" with {'cart_page': true} %}
                    </div>
                </div>
            </form>

            <div id="store-curr" class="hidden">{{ cart.currency }}</div>
            
        </div>
    </div>
</div>

<style>
    h2.row.no-gutters.text-primary.mb-0 {
        justify-content: end !important;
    }

    .cart-tem-image {
        max-width: 25%;
        height: 100px;
    }

    .img-fluid {
        max-width: 100%;
        height: 100% !important;
    }

    .cart-item-info {
        width: 70%;
        margin-left: 20px;
    }

    .row.align-items-center {
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        align-items: center;
        justify-content: space-around;
    }

    .cart-item-delete.text-right {
        position: relative;
    }

    .cart-item-quantity.col-7.col-md-3 {
    max-width: 100% !important;
}

    .float-md-none.form-group.form-quantity.m-auto.mb-2.w-auto {
        display: flex;
        align-items: center;
        gap: 20px;
    }

    .row.m-0.justify-content-md-center.align-items-center {
        border: 1px solid;
    }

    input.form-control.js-cart-quantity-input.cart-item-input.form-control.form-control-inline {
        font-family: Montserrat, sans-serif;
        height: 32px;
        border: none;
    }

    .js-cart-item.cart-item {
        border-bottom: 1px solid gainsboro;
        justify-content: center;
        padding-bottom: 20px;
    }

    .js-cart-item.cart-item:last-child {
        border-bottom: none;
        padding-bottom: 0;
    }

      span.js-cart-input-spinner.cart-item-spinner {
        position: absolute;
        top: 20%;
    }

    @media screen and (max-width: 479px) {
        .row.align-items-center {
            flex-wrap: wrap;
        }
    }


</style>