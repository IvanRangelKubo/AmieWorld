<div class="secclistblog">
    <div class="customcontainer">

        <div class="secctitles">
            <div class="linetitle"></div>
            <h1 class="maintitle internas">{{ settings.blog_title }}</h1>
            <div class="linetitle"></div>
        </div>

        <p class="introblog">{{ settings.blog_page_description }}</p>

        <div class="listingposts">
            {% for post in blog.posts %}
                <div class="entrycont listing">
                    <div id="w-node-_14696461-c14d-e87d-c4f5-40bfd98d348b-08e4e0d2" class="w-layout-layout stackentry listing wf-layout-layout">

    
                        <div class="w-layout-cell imgcellentry">
                            <div class="imgentrydiv" style="background-image: url('{{ post.thumbnail | default('images/placeholder_amieworld.webp') }}');"></div>
                        </div>

                        <div class="w-layout-cell">
                            <div class="infominblog">
                                <div class="dateentryblog">{{ post.date | date("d/m/Y") }}</div>
                                <h5 class="titleentry">{{ post.title }}</h5>
                                <p class="excerptblog">
                                    {{ post.summary}}
                                </p>
                                <a href="{{ shop.url }}/blog/posts/{{ post.handle }}" class="readmoreblog">Leer más</a>
                            </div>
                        </div>

                    </div>
                </div>

            {% endfor %}
        </div>


    </div>
</div>

<style>

    .post-item.w-layout-layout.stackentry.listing.wf-layout-layout {
        display: flex !important;
        align-items: center;
    }

    .post-item-information {
        width: 50% !important;
    }

    .post-item-image-container.w-layout-cell.imgcellentry,.post-item-image-container.w-layout-cell {
        width: 50% !important;
    }

    .titleentry {
        min-height: auto !important;
        height: auto !important;
    }

    .excerptblog {
        height: 150px;
    }

</style>