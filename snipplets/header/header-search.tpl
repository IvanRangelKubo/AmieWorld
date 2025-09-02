<div>
    <form class="js-search-container js-search-form busqueda-formcot" action="{{ store.search_url }}" method="get">
        
            <div data-w-id="c828cb3c-650a-2310-28ed-eb3e6a59f8f7" class="close-buscador js-modal-close  modal-header">X</div>
            <input class="js-search-input form-control search-input input-buscador w-input" autocomplete="off" type="search" name="q" placeholder="¿Qué estás buscando?" aria-label="{{ 'Buscador' | translate }}"/>
            <button type="submit" class="buscarbtn w-button search-input-submit" value="Buscar" aria-label="{{ 'Buscar' | translate }}">Buscar</button>
        
    </form>
</div>
<div class="js-search-suggest search-suggest contsearchpredictive">
    {# AJAX container for search suggestions #}
</div>

<style>

    .close-buscador{
        margin: 0px -2px 0px 0px;
        padding: 15px 0 0 0;
    }

    .busqueda-formcot{
        padding-top: 8px;
    }

    .js-search-suggest.search-suggest.contsearchpredictive {
        display: none;
    }
</style>