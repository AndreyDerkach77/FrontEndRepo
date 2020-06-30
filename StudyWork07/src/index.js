/// <reference path="../typings/globals/jquery/index.d.ts" />
jQuery(document).ready(function($) {
    let menuBtn = $(".header__burger");
    menuBtn.on("click", function() {
        let navigation = $(".header__navList");
        navigation.toggleClass("active");
    });

    $(".draw__slides").slick({
        infinite: false,
        // dots: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        arrows: true,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 1,
                },
            },
        ],
    });

    $(".team__items").slick({
        infinite: true,
        // dots: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: true,
        responsive: [
            {
                breakpoint: 1100,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 2,
                },
            },
            {
                breakpoint: 590,
                settings: {
                    slidesToShow: 1,
                },
            },
        ],
    });

    let btnUp = $(".footer__btnUp");

    $(window).on("scroll", function() {
        let nav = $(".header__nav");
        if ($(window).scrollTop() > 100) {
            nav.addClass("fixed");
            btnUp.addClass("show");
        } else {
            nav.removeClass("fixed");
            btnUp.removeClass("show");
        }
    });

    btnUp.on("click", function(event) {
        event.preventDefault();
        let href = $(this).attr("href");
        let dest = $(href).offset().top;
        $("body,html").animate({ scrollTop: dest }, 1000);
    });

    var newSelection = "";

    $(".projects__navList li").on("click", function() {
        $(".projects__navList li").removeClass("current");
        $(this).addClass("current");

        newSelection = $(this).attr("rel");

        $(".projects__item")
            .not("." + newSelection)
            .slideUp();
        $("." + newSelection).slideDown();
    });
});
