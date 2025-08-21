{# /*============================================================================
  #Page header
==============================================================================*/

#Properties

#Title

#Breadcrumbs 

#}

{% if template == 'category' or template == 'search' %}
  <div class="lisitnglinkbanner">
    <div class="contitlelisting">
      <div class="txtresults">{% block page_header_text %}{% endblock %}</div>
    </div>
  </div>
{% endif %}
