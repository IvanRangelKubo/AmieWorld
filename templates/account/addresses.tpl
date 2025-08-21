{# User addresses listed #}

<section class="seccinternas">
    <div class="custom-container">
        <div class="elementos-cuenta">


            <div class="maintitle-cont">
                <h2 class="maintitle">DIRECCIONES</h2>
            </div>

            <div class="container-direcciones" >
                {% for address in customer.addresses %}
                    <div class="direccion-container">
                        
                        {% if loop.first %}
                            <h4 class="addressTitle" >{{ 'Principal' | translate }}</h4>
                        {% elseif loop.index == 2 %}
                            <h4 class="addressTitle" >{{ 'Otras direcciones' | translate }}</h4>
                        {% endif %}

                        <div class="conticons-editadress w-clearfix">
                            <a href="{{ store.customer_address_url(address) }}" class="btndirecciones editar w-button">{{ 'Editar' | translate }}</a>
                        </div>
                        
                        <div class="infodireccion">{{ address | format_address }}</div>

                    </div>
                {% endfor %}
            </div>

                
            <a class="btndirecciones agregar w-button" href="{{ store.customer_new_address_url }}">{{ 'Agregar una nueva dirección' | translate }}</a>

        </div>
    </div>
</section>
