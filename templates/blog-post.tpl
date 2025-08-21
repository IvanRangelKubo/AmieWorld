<div class="seccinternas">
    <div class="custom-container">

        <div class="maintitle-cont">
            <h2 class="maintitle">{{ post.title }}</h2>
        </div>

        {{ component(
            'blog/blog-post-content', {
                image_lazy: true,
                image_lazy_js: true,
                post_content_classes: {
                    date: 'dateblogpost',
                    image: 'picblog-entry',
                    content: 'parrafoblog',
                },
            })
        }}

        <div class="contsocial-media">
            <div class="titulovip-elements social">Compartir</div>
            <a data-network="copy" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="facebook" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="whatsapp" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy-3.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="telegram" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy-5.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="messenger" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/socialicon-copy-4.svg" | static_url }}" class="iconshare-social"></a>
            <a data-network="twitter" href="#" class="st-custom-button w-inline-block"><img alt="" src="{{ "images/icon_twitter_1.svg" | static_url }}" class="iconshare-social"></a>
        </div>

        <a href="/blog/" class="ctared w-button back">Regresar al blog</a>

    </div>
</div>
