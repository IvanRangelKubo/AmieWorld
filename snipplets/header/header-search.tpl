<div class="searchcont w-form">
    <form class="js-search-container js-search-form busqueda-formcot" action="{{ store.search_url }}" method="get">
        <div class="form-group m-0">
            <div data-w-id="c828cb3c-650a-2310-28ed-eb3e6a59f8f7" class="close-buscador">X</div>
            <input class="js-search-input form-control search-input input-buscador w-input" autocomplete="off" type="search" name="q" placeholder="{{ 'Buscar' | translate }}" aria-label="{{ 'Buscador' | translate }}"/>
            <button type="submit" class="buscarbtn w-button search-input-submit" value="{{ 'Buscar' | translate }}" aria-label="{{ 'Buscar' | translate }}">
                {% include "snipplets/svg/search.tpl" with {svg_custom_class: "icon-inline svg-icon-text"} %}
            </button>
        </div>
    </form>
</div>
<div class="js-search-suggest search-suggest contsearchpredictive">
    {# AJAX container for search suggestions #}
</div>