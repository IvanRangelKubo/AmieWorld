<div class="seccentradablog">
    <div class="customcontainer">

        <div class="dateentryblog">
            {{ post.date|date("d/m/Y") }}
        </div>
        <h1 class="hdetalleblog">{{ post.title }}</h1>
        

        <div class="entryelements">
            {{ component(
                'blog/blog-post-content', {
                    image_lazy: true,
                    image_lazy_js: true,
                    post_content_classes: {
                        date: 'hide',
                        image: 'imgentryblog',
                        content: 'parrafoblog',
                    },
                })
            }}
        </div>

        <div class="compartirblog">
            <a href="/blog/" class="btnvolver w-button">Volver al blog</a>
            <div data-w-id="73e6aafd-3c94-7edc-8503-285c0d78c886" class="containershare entryblog">
                <img src="{{ "images/share_icon.svg" | static_url }}" class="shareicon" id="share-icon">
                <div class="contsocial-media" id="share-content">
                    <a data-network="facebook" href="#" class="st-custom-button w-inline-block"><img alt="Facebook" src="{{ "images/icon-share.svg" | static_url }}" class="iconshare-social"></a>
                    <a data-network="whatsapp" href="#" class="st-custom-button w-inline-block"><img alt="Whatsapp" src="{{ "images/icon-share-copy-2.svg" | static_url }}" class="iconshare-social"></a>
                    <a data-network="telegram" href="#" class="st-custom-button w-inline-block"><img alt="Telegram" src="{{ "images/icon-share-copy-3.svg" | static_url }}" class="iconshare-social"></a>
                    <a data-network="messenger" href="#" class="st-custom-button w-inline-block"><img alt="Messenger" src="{{ "images/icon-share-copy-4.svg" | static_url }}" class="iconshare-social"></a>
                    <a data-network="twitter" href="#" class="st-custom-button w-inline-block"><img alt="Twitter" src="{{ "images/icon-share-copy.svg" | static_url }}" class="iconshare-social"></a>
                    <a data-network="copy" href="#" class="st-custom-button w-inline-block"><img alt="Compartir" src="{{ "images/icon-share-copy-5.svg" | static_url }}" class="iconshare-social"></a>
                </div>
            </div>
            <div class="sharetxt">Compartir</div>
        </div>

        {% if settings.show_recomended_article_1 or settings.show_recomended_article_2 %}
            <div class="entradasrecientes">
                <div class="secctitles">
                    <h2 class="maintitle">Entradas anteriores 📝</h2>
                    <div class="linetitle"></div>
                </div>

                <div id="w-node-ad575169-ae50-49c9-8790-4589e5930468-111b078a" class="w-layout-layout stackrecientes wf-layout-layout">

                    {% if settings.show_recomended_article_1 %}
                        <div class="w-layout-cell">
                            <div class="entrycont">
                            <div id="w-node-ff5c399b-6cb2-e5b4-155d-d550139f18f1-111b078a" class="w-layout-layout stackentry wf-layout-layout">
                                <div class="w-layout-cell imgcellentry">
                                    <div class="imgentrydiv" style="background-image: url('{{ "recomended_article_1.jpg" | static_url }}')"></div>
                                </div>
                                <div class="w-layout-cell">
                                <div class="infominblog">
                                    <div class="dateentryblog">{{ settings.blog_recomended_date_1 }}</div>
                                    <h5 class="titleentry">{{ settings.blog_recomended_title_1 }}</h5>
                                    <p class="excerptblog">{{ settings.blog_recomended_article_1 | raw }}</p>
                                    <a href="{{ settings.blog_recomended_link_1 }}" class="readmoreblog">Leer más</a>
                                </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    {% endif %}

                    {% if settings.show_recomended_article_2 %}

                        <div class="w-layout-cell">
                            <div class="entrycont">
                            <div id="w-node-c02e2046-0a01-c186-99db-a9e5cc47cb06-111b078a" class="w-layout-layout stackentry wf-layout-layout">
                                <div class="w-layout-cell imgcellentry">
                                <div class="imgentrydiv" style="background-image: url('{{ "recomended_article_2.jpg" | static_url }}')"></div>
                                </div>
                                <div class="w-layout-cell">
                                <div class="infominblog">
                                    <div class="dateentryblog">{{ settings.blog_recomended_date_2 }}</div>
                                    <h5 class="titleentry">{{ settings.blog_recomended_title_2 }}</h5>
                                    <p class="excerptblog">{{ settings.blog_recomended_article_2 | raw }}</p>
                                    <a href="{{ settings.blog_recomended_link_2 }}" class="readmoreblog">Leer más</a>
                                </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    {% endif %}

                </div>
            </div>
        {% endif %}

    </div>
</div>

<style>

    .hide{
        display: none !important;
    }

    .post-content, .post-content p{
        font-size: 14px !important;
    }

    .btnvolver:hover {
        color: var(--darkgrey);
    }

    .containershare {
        width: 240px;
    }

    .post-content.parrafoblog > .compartirblog {
        display: none !important;
    }

    @media screen and (max-width: 479px) {
        .containershare {
            width: 255px;
        }

        .contsocial-media {
            padding-top: 10px;
        }
    }

</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
    const shareIcon = document.getElementById("share-icon");
    const shareContent = document.getElementById("share-content");

    if (shareIcon && shareContent) {
        shareContent.style.display = "none";

        shareIcon.addEventListener("click", function() {
        if (shareContent.style.display === "none" || shareContent.style.display === "") {
            shareContent.style.display = "block";
        } else {
            shareContent.style.display = "none";
        }
        });
    }
    });
</script>
