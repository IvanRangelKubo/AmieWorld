{# Product quantity #}

{% if not quickshop %}
    <div class="row" data-component="product.quantity">
        <div class="cont-variacion qty">
{% endif %}

{% embed "snipplets/forms/form-input.tpl" with{type_number: true, input_value: '1', input_name: 'quantity' ~ item.id, input_custom_class: 'js-quantity-input text-center ', input_label: false, input_append_content: true, input_group_custom_class: 'js-quantity form-row align-items-center contbtnsvip w-clearfix', form_control_container_custom_class: 'cantidad-input w-input', input_min: '1', input_aria_label: 'Cambiar cantidad' | translate, data_component: 'adding-amount.value' } %}
    {% block input_prepend_content %}
        <span class="boton_cant w-button js-quantity-down text-center" data-component="product.quantity.minus">
            {% include "snipplets/svg/minus.tpl" with {svg_custom_class: "icon-inline icon-w-12 icon-lg svg-icon-text"} %}
        </span>
    {% endblock input_prepend_content %}
    {% block input_append_content %}
        <span class="boton_cant mas w-button js-quantity-up text-center" data-component="product.quantity.plus">
            {% include "snipplets/svg/plus.tpl" with {svg_custom_class: "icon-inline icon-w-12 icon-lg svg-icon-text"} %}
        </span>
    {% endblock input_append_content %}
{% endembed %}

{% if not quickshop %}
        </div>
        {% if settings.last_product %}
            <div class="{% if product.variations %}js-last-product {% endif %}col-12 col-md-8 text-center text-md-left"{% if product.selected_or_first_available_variant.stock != 1 %} style="display: none;"{% endif %}>
                <div class="h6 text-accent font-weight-bold my-md-2 mb-4">
                    {{ settings.last_product_text }}
                </div>
            </div>
        {% endif %}
    </div>
{% endif %}