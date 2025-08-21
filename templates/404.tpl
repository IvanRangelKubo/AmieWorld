{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}

{# Here we will add an example as a help, you can delete this after you upload your products #}

{% if show_help %}
	<div id="product-example">
		{% snipplet 'defaults/show_help_product.tpl' %}
	</div>
{% else %}
	<section id="404">
		<div class="custom-container">
			<div class="not-found-div"><img alt="" src="{{"images/notfound.svg" | static_url}}" class="img-search">
				<h1 class="no-reults-txt"><strong class="bold-no-reults">LO SENTIMOS</strong><br>Tu búsqueda no produjo ningún resultado, intenta nuevamente con otra palabra.</h1>
			</div>
		</div>
	</section>
{% endif %}
