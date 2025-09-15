{# User addresses listed #}

<section class="seccmicuenta">
    <div class="customcontainer">

        <div class="container-direcciones">

            <div class="secctitles internas">
            <h1 class="maintitle internas">Mis direcciones 🏠</h1>
            <div class="linetitle"></div>
            </div>

            <div class="contbtncuenta">
            <a href="/account" class="btnmicuenta w-button">Regresar</a>
            <a href="{{ store.customer_new_address_url }}" class="btnmicuenta w-button">Agregar dirección</a>
            </div>

            
            {% for address in customer.addresses %}
                <div class="direccion-container">

                    <div class="conticons-editadress w-clearfix">
                        <a href="{{ store.customer_address_url(address) }}" class="btndirecciones editar w-button">{{ 'Editar' | translate }}</a>
                    </div>
                    
                    <div class="infodireccion">{{ address | format_address }}</div>

                </div>
            {% endfor %}
            

        </div>
    </div>
</section>
