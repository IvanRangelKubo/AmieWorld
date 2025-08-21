{# Payments details #}
<div id="single-product" class="seccinternas js-has-new-shipping js-product-detail js-product-container js-shipping-calculator-container" data-variants="{{product.variants_object | json_encode }}" data-store="product-detail">
    <div class="custom-container">

        <div class="rowinfoprod w-row section-single-product">
            <div class="w-col w-col-7" data-store="product-image-{{ product.id }}">
            	{% include 'snipplets/product/product-image.tpl' %}
            </div>
            <div class="w-col w-col-5" data-store="product-info-{{ product.id }}">
            	{% include 'snipplets/product/product-form.tpl' %}
            </div>
        </div>
    </div>  
</div>

{# Related products #}
{% include 'snipplets/product/product-related.tpl' %}
