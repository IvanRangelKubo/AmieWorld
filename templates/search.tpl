{% paginate by 12 %}

{% embed "snipplets/page-header.tpl" with { breadcrumbs: false } %}
	{% block page_header_text %}{{ "Resultados de búsqueda" | translate }}{% endblock page_header_text %}
{% endembed %}

<section class="category-body">
	<div class="container">
		{% if products %}
	        <div class="js-product-table row gridlistingproducto">
	        	{% include 'snipplets/product_grid.tpl' %}
	        </div>
			{% include 'snipplets/grid/pagination.tpl' with { infinite_scroll: true } %}
	    {% else %}
				<div class="not-found-div">
					<img alt="" src="{{ "images/notfound.svg" | static_url }}" class="img-search">
					<h1 class="no-reults-txt"><strong class="bold-no-reults">LO SENTIMOS</strong><br>Tu búsqueda no produjo ningún resultado, intenta nuevamente con otra palabra.</h1>
				</div>
	    {% endif %}
	</div>
</section>