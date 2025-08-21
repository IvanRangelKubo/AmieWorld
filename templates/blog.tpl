<div class="container-blog-listing">

    <div class="header-blog" style="background-image: url('{{ "banner_blog.jpg" | static_url }}');" >
        <div class="custom-container">
        <h1 class="maintitle white">{{ settings.blog_title }}</h1>
        </div>
    </div>

    <div class="custom-container">
        <div class="rowlist-blog w-row">

        <div class="w-col w-col-8 w-col-small-6">

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
            
        </div>
    </div>

</div>
