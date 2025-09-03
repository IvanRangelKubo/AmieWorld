<div class="js-ajax-cart-list cart-row cartItems">
    <div class="cartTitles">
      <span class="cartTitle">
        Producto
      </span>
      <span class="cartTitle">
        Total
      </span>
    </div>
    {# Cart panel items #}
    {% if cart.items %}
      {% for item in cart.items %}
        {% include "snipplets/cart-item-ajax.tpl" %}
      {% endfor %}
    {% endif %}
</div>

<div class="js-empty-ajax-cart cart-row cartEmpty" {% if cart.items_count > 0 %}style="display:none;"{% endif %}>
 	{# Cart panel empty #}
    <div class="alert alert-info" data-component="cart.empty-message">{{ "El carrito de compras está vacío." | translate }}</div>
</div>

<div id="error-ajax-stock" style="display: none;">
	<div class="alert alert-warning">
     	{{ "¡Uy! No tenemos más stock de este producto para agregarlo al carrito. Si querés podés" | translate }}<a href="{{ store.products_url }}" class="btn-link ml-1">{{ "ver otros acá" | translate }}</a>
    </div>
</div>

{# Check if store has free shipping without regions or categories #}

{% set has_free_shipping = cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price %}

{% if has_free_shipping and cart.free_shipping.min_price_free_shipping.min_price_raw > 0 %}
  
  {# includes free shipping progress bar: only if store has free shipping with a minimum #}
  
  {% include "snipplets/shipping/shipping-free-rest.tpl" %}
{% endif %}

<div class="cart-row cart-footer">
    {% include "snipplets/cart-totals.tpl" %}
</div>

<style>
  .cartTitles {
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      padding: 0px 5px 10px;
      border-bottom: 1px solid gainsboro;
      margin-bottom: 20px;
  }

  .cartTitle {
    font-size: 17px;
    font-family: Montserrat, sans-serif;
  }

    .js-cart-item.cart-item.js-cart-item-shippable.form-row {
      display: flex;
      flex-direction: row;
      align-items: center;
  }

  .cart-tem-image {
      width: 25%;
  }

  .cart-item-info {
    width: 70%;
    margin-left: 20px;
  }

  .form-group.float-left.form-quantity.w-auto.mb-2 {
    display: flex;
    gap: 15px;
    align-items: center;
  }

  .cart-item-delete {
    position: relative !important;
  }

  .row.m-0.justify-content-md-center {
    border: 1px solid black;
  }

  input.form-control.js-cart-quantity-input.cart-item-input.form-control.form-control-inline {
      font-family: Montserrat, sans-serif;
      height: 32px;
      border: none;
  }

  span.js-cart-quantity-btn.cart-item-btn.btn {
    font-size: 12px !important;
  }

  .js-empty-ajax-cart.cart-row.cartEmpty {
    margin-right: 10px;
  }

  span.js-cart-input-spinner.cart-item-spinner {
      position: absolute;
      top: 20%;
  }

    @media screen and (max-width: 479px) {
      .cart-row.cart-footer {
          padding: 0 !important;
      }
    }

</style>