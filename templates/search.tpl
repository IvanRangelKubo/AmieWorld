{% paginate by settings.category_quantity_products %}

{% embed "snipplets/page-header.tpl" with { breadcrumbs: false, products_count: products_count, query: query } %}
  {% block page_header_text %}
    {% if query %}
      Se han encontrado {{ products_count }} resultado{{ products_count == 1 ? '' : 's' }} para "{{ query }}"
    {% else %}
      Resultados de búsqueda
    {% endif %}
  {% endblock page_header_text %}
{% endembed %}

<section class="productslist">
	<div class="customcontainer">
		{% if products %}
			<div class="contlisting">
				{% include 'snipplets/product_grid.tpl' %}
			</div>
			{% include 'snipplets/grid/pagination.tpl' with { infinite_scroll: false } %}
		{% else %}
				<div class="not-found-div">
					<img alt="Not found icon" src="{{ 'images/notfount_icon.svg' | static_url }}" class="imgsearch">
					<h2 class="no-reults-txt">LO SENTIMOS<br>Tu búsqueda no produjo ningún resultado intenta nuevamente con otra palabra.</h2>
				</div>
	    {% endif %}
	</div>
</section>