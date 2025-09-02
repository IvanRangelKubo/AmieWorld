{% paginate by settings.category_quantity_products %}

{% set has_filters_available = products and has_filters_enabled and (filter_categories is not empty or product_filters is not empty) %}

{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}


{% if not show_help %}

	{% embed "snipplets/page-header.tpl" with { breadcrumbs: true } %}
		{% block page_header_text %}{{ category.name }}{% endblock page_header_text %}
	{% endembed %}

	<section class="productslist">
		<div class="customcontainer">

			<div class="js-category-controls-prev category-controls-sticky-detector"></div>
			<div class="js-category-controls row align-items-center mb-md-3 category-controls categoryFilters">
				{% if products %}
					{% set columns = settings.grid_columns %}
					<div class="filtersCategory">
						<span class="sortLabel">Filtrar por:</span>
						{% if has_filters_available %}
							<a href="#" class="js-modal-open filter-link" data-toggle="#nav-filters">
								{{ 'Filtrar' | t }} {% include "snipplets/svg/filter.tpl" with {svg_custom_class: "icon-inline icon-w-16"} %}
							</a>
							{% embed "snipplets/modal.tpl" with{modal_id: 'nav-filters', modal_class: 'filters modal-docked-small', modal_position: 'left', modal_transition: 'slide', modal_width: 'full'} %}
								{% block modal_head %}
									{{'Filtros' | translate }}
								{% endblock %}
								{% block modal_body %}
									{% if filter_categories is not empty %}
										{% snipplet "grid/categories.tpl" %}
									{% endif %}
									{% if product_filters is not empty %}
										{% snipplet "grid/filters.tpl" %}
									{% endif %}
									<div class="js-filters-overlay filters-overlay" style="display: none;">
										<div class="filters-updating-message">
											<h3 class="js-applying-filter" style="display: none;">{{ 'Aplicando filtro...' | translate }}</h3>
											<h3 class="js-removing-filter" style="display: none;">{{ 'Borrando filtro...' | translate }}</h3>
										</div>
									</div>
								{% endblock %}
							{% endembed %}
						{% endif %}
					</div>
					<div class="sortBy">
						<span class="sortLabel">Ordenar por:</span>
						{% include 'snipplets/grid/sort-by.tpl' %}
					</div>
				{% endif %}
			</div>

			<!-- Filters -->
			<div class="row ApliedFilters">
				{% include "snipplets/grid/filters.tpl" with {applied_filters: true} %}
			</div>
			<!-- Filters -->

			<!-- Products -->
			{% if products %}
				<div class=" contlisting" data-store="category-grid-{{ category.id }}">
					{% include 'snipplets/product_grid.tpl' %}
				</div>
				{% include 'snipplets/grid/pagination.tpl' with { infinite_scroll: false } %}
			{% else %}
				<div class="not-found-div">
					<img alt="" src="{{ 'images/notfount_icon.svg' | static_url }}" class="imgsearch">
					<h1 class="no-reults-txt">LO SENTIMOS<br>Tu búsqueda no produjo ningún resultado intenta nuevamente con otra palabra.</h1>
				</div>
			{% endif %}
			<!-- Products -->
		</div>
	</section>
	<style>
		.sortBy {
				display: flex;
				flex-direction: row;
				align-items: center;
				justify-content: flex-end;
				gap: 20px;
				flex: 1;
		}

		.categoryFilters {
				display: flex;
				flex-direction: row;
				align-items: center;
				align-content: center;
				margin: 25px;
		}

		.filtersCategory {
				display: flex;
				flex-direction: row;
				align-items: center;
				justify-content: flex-start;
				gap: 20px;
				flex: 1;
		}

		.sortBy > .form-group.mb-0 {
				width: 25%;
		}

		.sortLabel {
			font-size: medium;
			font-weight: 600;
			color: #ff6a9f;
		}

		.sortBy > .form-group > select.form-select.js-sort-by {
				border: none !important;
		}

		.form-group > .form-select-icon {
				bottom: 10px;
		}

		.form-group > .form-select-icon > svg.icon-inline.icon-w-14.icon-lg.svg-icon-text {
				width: .75em;
		}

		.filtersCategory > .js-modal-open.filter-link {
			width: fit-content;
			display: flex;
			gap: 10px;
			font-size: medium;
			padding: 5px 15px;
			border: 2px solid black;
		}

		.ApliedFilters {
			margin: auto !important;
		}
	</style>
{% elseif show_help %}
	{# Category Placeholder #}
	{% include 'snipplets/defaults/show_help_category.tpl' %}
{% endif %}