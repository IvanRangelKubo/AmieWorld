{# /*============================================================================
  #Page breadcrumbs
==============================================================================*/
#Properties

#Breadcrumb
    //breadcrumbs_custom_class for custom CSS classes
#}

{% if breadcrumbs %}
  <ul role="list" class="arbol-navegacion {{ breadcrumbs_custom_class }}">
    <li class="list-item-arbol">
      <a href="{{ store.url }}" class="categoria-arbol">{{ "Inicio" | translate }}</a>
    </li>

    {% if template == 'page' %}
      <li class="list-item-arbol active">{{ page.name }}</li>

    {% elseif template == 'cart' %}
      <li class="list-item-arbol active">{{ "Carrito de compras" | translate }}</li>

    {% elseif template == 'search' %}
      <li class="list-item-arbol active">{{ "Resultados de búsqueda" | translate }}</li>

    {% elseif template == 'account.order' %}
      <li class="list-item-arbol active">{{ 'Orden {1}' | translate(order.number) }}</li>

    {% elseif template == 'blog' %}
      <li class="list-item-arbol active">{{ 'Blog' | translate }}</li>

    {% elseif template == 'blog-post' %}
      <li class="list-item-arbol">
        <a href="{{ store.blog_url }}" class="categoria-arbol">{{ 'Blog' | translate }}</a>
      </li>
      <li class="list-item-arbol active">{{ post.title }}</li>

    {% else %}
      {% for crumb in breadcrumbs %}
        {% if crumb.last %}
          <li class="list-item-arbol active">{{ crumb.name }}</li>
        {% else %}
          <li class="list-item-arbol">
            <a href="{{ crumb.url }}" class="categoria-arbol">{{ crumb.name }}</a>
          </li>
        {% endif %}
      {% endfor %}
    {% endif %}
  </ul>
{% endif %}

