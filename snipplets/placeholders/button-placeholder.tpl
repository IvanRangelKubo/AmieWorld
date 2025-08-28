<div class="btn-vip w-button js-addtocart js-addtocart-placeholder btn btn-primary btn-transition disabled {{ custom_class }}" style="display: none;">
    <div class="d-inline-block">
        <span class="js-addtocart-text transition-container btn-transition-start active">
            {{ 'Agregar a mi bolsa' | translate }}
        </span>
        <div class="js-addtocart-adding transition-container btn-transition-progress">
            {{ 'Agregando...' | translate }}
        </div>
    </div>
</div>

<style>

    .d-inline-block > * {
        letter-spacing: normal;
        text-transform: none;
    }

</style>