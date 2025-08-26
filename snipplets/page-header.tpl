{# /*============================================================================
  #Page header
==============================================================================*/

#Properties

#Title

#Breadcrumbs 

#}

{% if template == 'category' or template == 'search' %}
  <div class="headerlist">
    <div class="customcontainer">
      <h1 class="titlelisting">{% block page_header_text %}{% endblock %}</h1>
      {% include "snipplets/breadcrumbs.tpl" %}
    </div>
  </div>
{% endif %}
