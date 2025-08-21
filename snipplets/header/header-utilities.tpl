<div class="cont-cartcontact">

    <div class="linkicons-nav buscadormobile">
        <img src="{{ "images/iconsheader.svg" | static_url }}" alt="Buscador" class="icononav js-modal-open js-toggle-search" data-toggle="#nav-search">
    </div>


    <a href="{{ store.customer_home_url }}" class="linkicons-nav mobile w-inline-block">
        <img loading="eager" src="{{ "images/iconsheader-copia.svg" | static_url }}" alt="Mi cuenta" class="icononav">
    </a>

    <div class="linkicons-nav">
        <a {% if settings.ajax_cart and template != 'cart' %} href="#" class="js-modal-open js-fullscreen-modal-open js-toggle-cart" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart" {% else %} href="{{ store.cart_url }}" {% endif %}>
            <img  src="{{ "images/iconsheader-copia-2.svg" | static_url }}" alt="Carrito" class="icononav">
            <div class="qtynumber js-cart-widget-amount">{{ cart.items_count }}</div>
        </a>
    </div>

</div>
