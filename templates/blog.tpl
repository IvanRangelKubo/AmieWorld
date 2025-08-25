<div class="secclistblog">
    <div class="customcontainer">

        <div class="secctitles">
            <div class="linetitle"></div>
            <h1 class="maintitle internas">{{ settings.blog_title }}</h1>
            <div class="linetitle"></div>
        </div>

        <p class="introblog">Bienvenid@ a nuestro blog, el rincón donde la pasión por el skincare coreano y el cuidado personal se encuentran. Aquí encontrarás tips, consejos, lanzamientos y todo lo que necesitas para consentir tu piel y sentirte increíble. Porque en Amie, creemos que cuidar de ti es la mejor forma de brillar. </p>
        <a data-w-id="b2967ce7-bd11-ea86-daf0-02a59c529577" href="#" class="vertagsbtn w-button">Ver Categorías</a>

        <div class="cont-tagsblog">
            <a href="#" class="tagblog">Ver todo</a>
            <a href="#" class="tagblog selected">Ingredientes</a>
            <a href="#" class="tagblog">Formulaciones</a>
            <a href="#" class="tagblog">Tendencias</a>
            <a href="#" class="tagblog">Webinar / Masterclass</a>
            <a href="#" class="tagblog">Estilo de vida</a>
            <a href="#" class="tagblog">Tips skincare</a>
        </div>

        <div class="listingposts">
            
            {% for post in blog.posts %}
                <div class="entrycont listing">
                    {{ component(
                        'blog/blog-post-item', {
                            image_lazy: true,
                            image_lazy_js: true,
                            post_item_classes: {
                                item: 'w-layout-layout stackentry listing wf-layout-layout',
                                image_container: 'w-layout-cell',
                                image: '',
                                title: 'titleentry',
                                summary: 'excerptblog',
                                read_more: 'readmoreblog',
                            },
                        })
                    }}
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

</style>