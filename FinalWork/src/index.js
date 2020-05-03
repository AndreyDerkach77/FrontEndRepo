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
        });
    });

    // Настройка темы
    let theme;
    if (localStorage.getItem("theme")===null) {
        localStorage.setItem("theme", 'light');
    }
    theme = localStorage.getItem("theme");
    console.log(theme);
    $("body, .themes2, .header__nav, .works, .about").addClass(theme);

    let lastTheme =
        localStorage
            .getItem("theme")
            .charAt(0)
            .toUpperCase() + localStorage.getItem("theme").slice(1);

    $(".themes2 option:contains(" + lastTheme + ")").each(function() {
        if ($(this).text() == lastTheme) {
            $(this).attr("selected", "selected");
            return false;
        }
        return true;
    });

    $(".themes2").on("change", function() {
        $("body, .themes2, .header__nav, .works, .about").removeClass(theme);

        localStorage.setItem("theme", $(this).val());

        theme = localStorage.getItem("theme");

        $("body, .themes2, .header__nav, .works, .about").addClass(theme);
    });

    // Динамическое добавление блоков
    let fileLoad = $(".fileLoad");
    let dataCategoryArr = [
        "logo",
        "wordpress",
        "web design",
        "ui/ix",
        "mobile app",
        "branding",
    ];
    let counter = 0;

    fileLoad.on("change", function() {
        if (fileLoad.get(0).files[0] != undefined) {
            addDynamicExtraField();
        } else {
            console.log("Ничего не выбрано");
        }
    });

    function addDynamicExtraField() {
        counter++;

        let fileName = fileLoad.get(0).files[0].name;
        let getRandomArrIndex = Math.floor(
            Math.random() * dataCategoryArr.length + 0
        );
        let getDataCategory = dataCategoryArr[getRandomArrIndex];

        let divAdd = `work__item extra${counter} active`;
        let divAdd2 = `works__pic extra${counter}`;
        let divAdd3 = `overlay extra${counter}`;

        let div = $("<div/>", {
            class: divAdd,
            "data-category": getDataCategory,
        }).appendTo($(".works__items"));

        let div2 = $("<div/>", {
            class: divAdd2,
        }).appendTo(div);

        let img = $("<img/>", {
            src: `./img/${fileName}`,
            alt: "",
        }).appendTo(div2);

        let div3 = $("<div/>", {
            class: divAdd3,
        }).appendTo(div);

        let p = $("<p/>", {
            text: "+",
        }).appendTo(div3);
    }
});
