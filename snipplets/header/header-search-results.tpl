<div id="barritascroll"  class="search-suggest-list">
    {% set search_suggestions = products | take(6) %}

    {% for product in search_suggestions %}
        <a href="{{ product.url }}" class="itemrecomend w-inline-block">
            <div id="w-node-c828cb3c-650a-2310-28ed-eb3e6a59f8fd-6a59f889" class="w-layout-layout quick-stack wf-layout-layout">
                <div class="w-layout-cell cellpicrecomend">
                    {{ product.featured_image | product_image_url("tiny") | img_tag(product.featured_image.alt, {class: 'picrecomend'}) }}
                </div>
                <div class="w-layout-cell cellnamerecomend">
                    <div class="namerecomend">{{ product.name | highlight(query) }}</div>
                </div>
            </div>
        </a>
    {% endfor %}
</div>
