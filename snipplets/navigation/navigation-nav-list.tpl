<nav role="navigation" id="barritavar" class="nav-menu w-nav-menu">
  
  {% for item in navigation %}
    
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
      <a href="{{ item.url }}" class="menuelement w-nav-link">{{ item.name }}</a>
    {% endif %}

  {% endfor %}

</nav>