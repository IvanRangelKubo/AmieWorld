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
              <div>
                <p>TEsting</p>
              </div>
              {% for post in blog.posts %}
              {{ component(
                  'blog/blog-post-item', {
                      image_lazy: true,
                      image_lazy_js: true,
                      post_item_classes: {
                          item: 'w-layout-layout stackblog wf-layout-layout',
                          image_container: 'w-layout-cell',
                          image: 'linkimg-blog w-inline-block',
                          title: 'titulo-entryblog',
                          summary: 'post-excerpt',
                          read_more: 'readmore-blogpost',
                      },
                  })
              }}
              {% endfor %}
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