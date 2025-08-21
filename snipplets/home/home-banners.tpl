<div class="seccmasbuscados">
    <div class="custom-container">

      <div class="maintitle-cont">
        <h2 class="maintitle">LOS MÁS <span class="redtxttitle">BUSCADOS</span></h2>
      </div>

      <div id="w-node-_1ff1a483-2fd9-964c-e61a-a7541d17a537-ba5351bb" class="w-layout-layout stack-masbuscados wf-layout-layout">

        {% if settings.banner_01_show %}
          <div id="w-node-_1ff1a483-2fd9-964c-e61a-a7541d17a538-ba5351bb" class="w-layout-cell cardimg-coleccion">
            <a href="{{settings.banner_01_url}}" class="cardlink w-inline-block">
                <img src="{{ "banner_01.jpg" | static_url }}" loading="lazy" alt="" class="cardimg">
              <h3 class="titlecard"><strong>{{settings.banner_01_title}}</strong></h3>
            </a>
          </div>
        {% endif %}

        {% if settings.banner_02_show %}
          <div id="w-node-_1ff1a483-2fd9-964c-e61a-a7541d17a538-ba5351bb" class="w-layout-cell cardimg-coleccion">
            <a href="{{settings.banner_02_url}}" class="cardlink w-inline-block">
                <img src="{{ "banner_02.jpg" | static_url }}" loading="lazy" alt="" class="cardimg">
              <h3 class="titlecard"><strong>{{settings.banner_02_title}}</strong></h3>
            </a>
          </div>
        {% endif %}

        {% if settings.banner_03_show %}
          <div id="w-node-_1ff1a483-2fd9-964c-e61a-a7541d17a538-ba5351bb" class="w-layout-cell cardimg-coleccion">
            <a href="{{settings.banner_03_url}}" class="cardlink w-inline-block">
                <img src="{{ "banner_03.jpg" | static_url }}" loading="lazy" alt="" class="cardimg">
              <h3 class="titlecard"><strong>{{settings.banner_03_title}}</strong></h3>
            </a>
          </div>
        {% endif %}

      </div>
    </div>
</div>