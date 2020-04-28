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
    // Настройка слайдера
    $(function() {
        // Owl Carousel
        var owl = $(".slider__slides");
        owl.owlCarousel({
            items: 1,
            // margin: 10,
            // loop: true,
            nav: true,
            navText : ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
        });
    });

    // Настройка темы
    $("body").addClass(localStorage.getItem("theme"));
    $(".themes2").addClass(localStorage.getItem("theme"));
    let lastTheme =
        localStorage
            .getItem("theme")
            .charAt(0)
            .toUpperCase() + localStorage.getItem("theme").slice(1);
    console.log(lastTheme);

    $(".themes2 option:contains(" + lastTheme + ")").each(function() {
        if ($(this).text() == lastTheme) {
            $(this).attr("selected", "selected");
            return false;
        }
        return true;
    });
    $(".themes2").on("change", function() {
        $("body").removeClass(localStorage.getItem("theme"));
        $(".themes2").removeClass(localStorage.getItem("theme"));
        localStorage.setItem("theme", $(this).val());
        $("body").addClass(localStorage.getItem("theme"));
        $(".themes2").addClass(localStorage.getItem("theme"));
    });
    // $("body").addClass($(".themes2").find("option:selected").text());
    // console.log($(".themes2").find("option:selected").text());

    // console.log($('#themes').val(lastTheme));
    // $('".themes" option:contains("Dark")').prop('selected', true);
    // console.log($('#themes').filter(function () { return $(this).html() == "Light"; }).val());
    // console.log($('#themes').find('option[text="Light"]').val());
    // let selectValue = $(".themes")
    //     .find("option:selected")
    //     .index();
    // console.log(selectValue);
    // $(".themes")
    //     .prop("selectedIndex", selectValue)
    //     .selectric("refresh");

    // console.log(lastTheme);

    // $(".themes").selectric({
    //     // $(this).val() = localStorage.getItem("theme"),
    //     // $(this).prop('selectedIndex', 1).selectric('refresh'),
    //     onChange: function() {
    //         $("body").removeClass(localStorage.getItem("theme"));
    //         localStorage.setItem("theme", $(this).val());
    //         $("body").addClass(localStorage.getItem("theme"));
    //         // console.log(localStorage.getItem("theme"));
    //     },
    // });
});
