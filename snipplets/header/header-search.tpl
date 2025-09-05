<form class="js-search-container js-search-form busqueda-formcot" action="{{ store.search_url }}" method="get">
	
        <div data-w-id="c828cb3c-650a-2310-28ed-eb3e6a59f8f7" class="close-buscador js-modal-close  modal-header">X</div>
        <input class="js-search-input form-control search-input input-buscador w-input" autocomplete="off" type="search" name="q" placeholder="¿Qué estás buscando?" aria-label="{{ 'Buscador' | translate }}"/>
        <button type="submit" class="search-input-submit buscarbtn w-button" value="{{ 'Buscar' | translate }}" aria-label="{{ 'Buscar' | translate }}">
            Buscar
        </button>
	
</form>
<div class="js-search-suggest search-suggest">
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

    .search-suggest-list {
        border: 1px solid var(--darkgrey);
        background-color: #fff;
        width: 100%;
        height: auto;
        display: block;
        inset: 44px 0% auto;
        overflow: auto;
        max-width: 800px;
        margin: auto;
        max-height: 240px;
    }

    .js-modal-overlay.modal-overlay {
        background: none;
    }

    @media screen and (min-width: 1024px){
        .js-search-suggest.search-suggest {
            width: 70%;
            margin: auto;
        }
    }

    @media screen and (max-width: 991px){
        .js-search-suggest.search-suggest {
            width: 90%;
            margin: auto;
        }
    }


</style>