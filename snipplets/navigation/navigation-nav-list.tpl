<nav role="navigation" id="barritavar" class="nav-menu w-nav-menu">

  {% set menu_key = settings.main_menu | default('navigation') %}
  {% set menu_items = attribute(menus, menu_key) ?? navigation %}
  
  {% for item in menu_items %}
    
    {% if item.subitems %}
      <div data-hover="true" data-delay="0" class="dropnavmain w-dropdown">

        <div class="menuelement w-dropdown-toggle">
          <div class="arrowdropmenu w-icon-dropdown-toggle"></div>
          <div>{{ item.name }}</div>
        </div>

        <nav class="menucontdrop w-dropdown-list">
          {% for subitem in item.subitems %}
            <a href="{{ subitem.url }}" class="droplinkmenu w-dropdown-link">{{ subitem.name }}</a>
          {% endfor %}
        </nav>

      </div>

    {% else %}
      {% if item.name == "%OFERTAS" %}
        <a href="{{ item.url }}" class="menuelement ofertas w-nav-link">{{ item.name }}</a>
      {% else %}
        <a href="{{ item.url }}" class="menuelement w-nav-link">{{ item.name }}</a>
      {% endif %}
      
    {% endif %}

  {% endfor %}

</nav>