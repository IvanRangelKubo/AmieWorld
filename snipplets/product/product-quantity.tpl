{# Product quantity #}

{% if not quickshop %}
    <div class="quantityContainer" data-component="product.quantity">
        <div class="cont-variacion qty">
{% endif %}

{% embed "snipplets/forms/form-input.tpl" with{type_number: true, input_value: '1', input_name: 'quantity' ~ item.id, input_custom_class: 'js-quantity-input text-center cantidad-input w-input', input_label: false, input_append_content: true, input_group_custom_class: 'js-quantity form-row align-items-center contbtnsvip w-clearfix', input_min: '1', input_aria_label: 'Cambiar cantidad' | translate, data_component: 'adding-amount.value' } %}
    {% block input_prepend_content %}
        <span class="boton_cant w-button js-quantity-down text-center" data-component="product.quantity.minus">
            -
        </span>
    {% endblock input_prepend_content %}
    {% block input_append_content %}
        <span class="boton_cant mas w-button js-quantity-up text-center" data-component="product.quantity.plus">
            +
        </span>
    {% endblock input_append_content %}
{% endembed %}

{% if not quickshop %}
        </div>
    </div>
{% endif %}

<style>
    .boton_cant.mas{
        padding: 9px 5px 3px;
    }

    .boton_cant{
        padding: 8px 5px 3px;
    }

    .quantityContainer {
        margin: 0 !important;
        display: flex;
        flex-wrap: wrap;
    }

    .form-group.js-quantity.form-row.align-items-center.contbtnsvip.w-clearfix {
        margin: 0px;
    }
</style>