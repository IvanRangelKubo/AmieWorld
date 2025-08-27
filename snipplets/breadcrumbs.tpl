{# /*============================================================================
  #Page breadcrumbs
==============================================================================*/
#Properties

#Breadcrumb
    //breadcrumbs_custom_class for custom CSS classes
#}

{% if breadcrumbs %}

    <ul class="breadcrumbs arbol-navegacion {{ breadcrumbs_custom_class }}">

        <li class="list-item-arbollist-item-arbol">
          <a href="{{ store.url }}" class="categoria-arbol">Inicio ></a>
        </li>
        

        {% if template == 'page' %}
          <li class="list-item-arbollist-item-arbol">
            <a href="#" class="categoria-arbol">{{ page.name }} ></a>
          </li>
        {% elseif template == 'cart' %}
            <li class="list-item-arbollist-item-arbol">
              <a href="#" class="categoria-arbol">{{ "Carrito de compras" | translate }} ></a>
            </li>
        {% elseif template == 'search' %}
            <li class="list-item-arbollist-item-arbol">
              <a href="#" class="categoria-arbol">{{ "Resultados de búsqueda" | translate }} ></a>
            </li>

        {% elseif template == 'account.order' %}
            <li class="list-item-arbollist-item-arbol">
              <a href="#" class="categoria-arbol">{{ 'Orden {1}' | translate(order.number) }} ></a>
            </li>

        {% elseif template == 'blog' %}
            <li class="list-item-arbollist-item-arbol">
              <a href="#" class="categoria-arbol">{{ 'Blog' | translate }} ></a>
            </li>

        {% elseif template == 'blog-post' %}
            <li class="list-item-arbollist-item-arbol">
              <a href="{{ store.blog_url }}" class="categoria-arbol">{{ 'Blog' | translate }} ></a>
            </li>
            <li class="list-item-arbollist-item-arbol">
              <a href="{{ store.blog_url }}" class="categoria-arbol">{{ post.title }} ></a>
            </li>
             <span class="crumb active"></span>

       {% elseif template == 'category' %}
        
          {% if category.name != 'Productos' %}
              <li class="list-item-arbol">
                <a href="/productos" class="categoria-arbol">Catálogo ></a>
              </li>
          {% endif %}
        
          {% if category.parents %}
              {% for parent in category.parents %}
                  {% if parent.name != 'Productos' %}
                      <li class="list-item-arbol">
                        <a href="{{ parent.url }}" class="categoria-arbol">{{ parent.name }} ></a>
                      </li>
                  {% endif %}
              {% endfor %}
          {% endif %}
          
          <li class="list-item-arbol">
            <span class="categoria-arbol">{{ category.name }} ></span>
          </li>


        {% else %}

            {% for crumb in breadcrumbs %}
                {% if crumb.last %}
                    <li class="list-item-arbollist-item-arbol">
                      <div href="#" class="categoria-arbol">{{ crumb.name }} ></div>
                    </li>
                    
                {% else %}
                    <li class="list-item-arbollist-item-arbol">
                      <a href="{{ crumb.url }}" class="categoria-arbol">{{ crumb.name }} ></a>
                    </li>
                {% endif %}
            {% endfor %}
        {% endif %}

    </ul>

    <style>
      .arbol-navegacion {
          display: flex !important;
          gap: 7px;
          justify-content: center;
      }
    </style>

{% endif %}
