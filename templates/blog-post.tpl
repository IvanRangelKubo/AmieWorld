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
