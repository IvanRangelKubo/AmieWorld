  <div class="seccbloghome">
    <div class="customcontainer">
      <div id="w-node-c8c2c54b-7f5a-f016-123d-5f2b9057b293-40132ca6" class="w-layout-layout stackbloghome wf-layout-layout">
        
        <div class="w-layout-cell cellintroblog">

          <div class="secctitles">
            <h1 class="maintitle">{{ settings.blog_section_title }}</h1>
            <div class="linetitle"></div>
          </div>

          <p class="introblog">{{ settings.blog_description }}</p>
          <a href="/blog" class="comprarbtn blog w-button">Ver Blog</a>
          
        </div>

        <div class="w-layout-cell">
          <div data-delay="5000" data-animation="slide" class="blogslider w-slider" data-autoplay="true" data-easing="ease-in-out" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="600" data-infinite="true">
            
            <div class="maskblog w-slider-mask">

              {% if settings.show_article_1 %}
                <div class="entryslide w-slide">
                  <div class="entrycont">
                    <div id="w-node-_25b0f977-cabd-95db-18f5-b9697890f21e-40132ca6" class="w-layout-layout stackentry wf-layout-layout">

                      <div class="w-layout-cell imgcellentry">
                        <div class="imgentrydiv"  style="background-image:url({{ "article_1.jpg" | static_url }})"></div>
                      </div>

                      <div class="w-layout-cell">
                        <div class="infominblog">
                          <div class="dateentryblog">{{ settings.blog_section_date_1 }}</div>
                          <h5 class="titleentry">{{ settings.blog_section_title_1 }}</h5>
                          <p class="excerptblog">{{ settings.blog_article_1 }}</p>
                          <a href="{{ settings.blog_section_link_1 }}" class="readmoreblog">Leer más</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              {% endif %}

              {% if settings.show_article_2 %}
                <div class="entryslide w-slide">
                  <div class="entrycont">
                    <div id="w-node-_25b0f977-cabd-95db-18f5-b9697890f21e-40132ca6" class="w-layout-layout stackentry wf-layout-layout">

                      <div class="w-layout-cell imgcellentry">
                        <div class="imgentrydiv"  style="background-image:url({{ "article_2.jpg" | static_url }})"></div>
                      </div>

                      <div class="w-layout-cell">
                        <div class="infominblog">
                          <div class="dateentryblog">{{ settings.blog_section_date_2 }}</div>
                          <h5 class="titleentry">{{ settings.blog_section_title_2 }}</h5>
                          <p class="excerptblog">{{ settings.blog_article_2 }}</p>
                          <a href="{{ settings.blog_section_link_2 }}" class="readmoreblog">Leer más</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              {% endif %}

              {% if settings.show_article_3 %}
                <div class="entryslide w-slide">
                  <div class="entrycont">
                    <div id="w-node-_25b0f977-cabd-95db-18f5-b9697890f21e-40132ca6" class="w-layout-layout stackentry wf-layout-layout">

                      <div class="w-layout-cell imgcellentry">
                        <div class="imgentrydiv"  style="background-image:url({{ "article_3.jpg" | static_url }})"></div>
                      </div>

                      <div class="w-layout-cell">
                        <div class="infominblog">
                          <div class="dateentryblog">{{ settings.blog_section_date_3 }}</div>
                          <h5 class="titleentry">{{ settings.blog_section_title_3 }}</h5>
                          <p class="excerptblog">{{ settings.blog_article_3 }}</p>
                          <a href="{{ settings.blog_section_link_3 }}" class="readmoreblog">Leer más</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              {% endif %}

              {% if settings.show_article_4 %}
                <div class="entryslide w-slide">
                  <div class="entrycont">
                    <div id="w-node-_25b0f977-cabd-95db-18f5-b9697890f21e-40132ca6" class="w-layout-layout stackentry wf-layout-layout">

                      <div class="w-layout-cell imgcellentry">
                        <div class="imgentrydiv"  style="background-image:url({{ "article_4.jpg" | static_url }})"></div>
                      </div>

                      <div class="w-layout-cell">
                        <div class="infominblog">
                          <div class="dateentryblog">{{ settings.blog_section_date_4 }}</div>
                          <h5 class="titleentry">{{ settings.blog_section_title_4 }}</h5>
                          <p class="excerptblog">{{ settings.blog_article_4 }}</p>
                          <a href="{{ settings.blog_section_link_4 }}" class="readmoreblog">Leer más</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              {% endif %}

            </div>


            <div class="arrowslider hiddenmobile w-slider-arrow-left">
              <div class="iconslidermain w-icon-slider-left"></div>
            </div>
            <div class="arrowslider hiddenmobile w-slider-arrow-right">
              <div class="iconslidermain w-icon-slider-right"></div>
            </div>
            <div class="navblog w-slider-nav w-slider-nav-invert w-round"></div>

          </div>
        </div>

      </div>
    </div>
  </div>
