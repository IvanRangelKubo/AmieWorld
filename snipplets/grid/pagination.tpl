{% if infinite_scroll %}
  {% if pages.current == 1 and not pages.is_last %}
    <div class="paginador">
      <a class="js-load-more pagelink">
        <span class="js-load-more-spinner" style="display:none;">
          {% include "snipplets/svg/sync-alt.tpl" with {svg_custom_class: "icon-inline icon-spin"} %}
        </span>
        {{ 'Mostrar más productos' | t }}
      </a>
    </div>
    <div id="js-infinite-scroll-spinner" class="paginador" style="display:none">
      {% include "snipplets/svg/sync-alt.tpl" with {svg_custom_class: "icon-inline icon-3x svg-icon-text icon-spin"} %}
    </div>
  {% endif %}
{% else %}
  {% if pages.numbers %}
    <div class="paginador">
      {# Flecha izquierda #}
      {% if pages.previous %}
        <a href="{{ pages.previous }}" class="pagelink">&lt;</a>
      {% endif %}

      {# Números de página #}
      {% for page in pages.numbers %}
        {% if page.selected %}
          <a href="{{ page.url }}" class="pagelink active">{{ page.number }}</a>
        {% else %}
          <a href="{{ page.url }}" class="pagelink">{{ page.number }}</a>
        {% endif %}
      {% endfor %}

      {# Flecha derecha #}
      {% if pages.next %}
        <a href="{{ pages.next }}" class="pagelink">&gt;</a>
      {% endif %}
    </div>
  {% endif %}
{% endif %}
