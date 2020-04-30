/// <reference path="../typings/globals/jquery/index.d.ts" />
jQuery(document).ready(function($) {
    let menuBtn = $(".header__burger");
    menuBtn.on("click", function() {
        let navigation = $(".header__navList");
        navigation.toggleClass("active");
    });
    $(function() {
        $(".header__searchBtn").on("click", function() {
            $(".header__input").toggleClass("opened");
        });
    });
    // Навигация

    $(window).on("scroll", function() {
        let nav = $(".header__nav");
        if ($(window).scrollTop() > 200) {
            nav.addClass("fixed");
        } else {
            nav.removeClass("fixed");
        }
    });
    let btnUp = $(".footer__btnUp");
    $(window).on("scroll", function() {
        let nav = $(".header__nav");
        if ($(window).scrollTop() > 20) {
            btnUp.addClass("show");
        } else {
            btnUp.removeClass("show");
        }
    });
    btnUp.on("click", function(event) {
        event.preventDefault();
        let href = $(this).attr("href");
        let dest = $(href).offset().top;
        $("body,html").animate({ scrollTop: dest }, 1000);
    });

    //Фильтрация
    let btns = $(".works__btn");
    btns.on("click", function() {
        $(this)
            .addClass("active")
            .siblings()
            .removeClass("active");
        let cards = $(".work__item");
        cards.removeClass("active");
        let btnText = $(this)
            .text()
            .toLowerCase();
        let final = cards.filter(function() {
            if (btnText === "all") {
                return cards;
            } else {
                return $(this).data("category") === btnText;
            }
        });
        // console.log("cards", cards);
        // console.log("final", final);
        final.each(function() {
            $(this).addClass("active");
        });
    });

    // Настройка слайдера
    $(function() {
        // Owl Carousel
        var owl = $(".slider__slides");
        owl.owlCarousel({
            items: 1,
            nav: true,
            navText: [
                "<i class='fa fa-chevron-left'></i>",
                "<i class='fa fa-chevron-right'></i>",
            ],
        });
    });

    // Настройка темы
    let theme;
    theme = localStorage.getItem("theme");
    $("body").addClass(theme);
    $(".themes2").addClass(theme);
    $(".header__nav").addClass(theme);
    $(".works").addClass(theme);

    let lastTheme =
        localStorage
            .getItem("theme")
            .charAt(0)
            .toUpperCase() + localStorage.getItem("theme").slice(1);
    // console.log(lastTheme);

    $(".themes2 option:contains(" + lastTheme + ")").each(function() {
        if ($(this).text() == lastTheme) {
            $(this).attr("selected", "selected");
            return false;
        }
        return true;
    });

    $(".themes2").on("change", function() {
        $("body").removeClass(theme);
        $(".themes2").removeClass(theme);
        $(".header__nav").removeClass(theme);
        $(".works").removeClass(theme);

        localStorage.setItem("theme", $(this).val());

        theme = localStorage.getItem("theme");

        $("body").addClass(theme);
        $(".themes2").addClass(theme);
        $(".header__nav").addClass(theme);
        $(".works").addClass(theme);
    });

    $('.works__load').click(function(){
    
        $('#imulated').trigger('click');
        
    });
});
