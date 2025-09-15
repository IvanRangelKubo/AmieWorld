<div id="barritascroll"  class="search-suggest-list">
    {% set search_suggestions = products | take(6) %}

    {% for product in search_suggestions %}
        <a href="{{ product.url }}" class="itemrecomend w-inline-block">
            <div id="w-node-c828cb3c-650a-2310-28ed-eb3e6a59f8fd-6a59f889" class="w-layout-layout quick-stack wf-layout-layout">
                <div class="w-layout-cell cellpicrecomend">
                    {% set featured_url = product.featured_image | product_image_url('original') %}
                    {# en TN, cuando no hay imagen, la URL incluye "no-photo" #}
                    {% set has_real_image = featured_url and ('no-photo' not in featured_url) %}

                    {% if has_real_image %}
                        {{ product.featured_image | product_image_url('tiny') | img_tag(product.featured_image.alt, { class: 'picrecomend' }) }}
                    {% else %}
                        <img src="{{ 'images/placeholder_amieworld.webp' | static_url }}" alt="Imagen no disponible" class="picrecomend">
                    {% endif %}
                </div>
                <div class="w-layout-cell cellnamerecomend">
                    <div class="namerecomend">{{ product.name | highlight(query) }}</div>
                </div>
            </div>
        </a>
    {% endfor %}
</div>
