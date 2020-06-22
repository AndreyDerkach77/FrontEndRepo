/// <reference path="../typings/globals/jquery/index.d.ts" />
jQuery(document).ready(function ($) {
    let menuBtn = $(".header__burger");
    menuBtn.on("click", function () {
        let navigation = $(".header__navList");
        navigation.toggleClass("current-menu-item");
    });
    $(function () {
        $(".header__searchBtn").on("click", function () {
            $(".header__input").toggleClass("opened");
        });
    });

    // Навигация

    // $(window).on("scroll", function () {
    //     let nav = $(".header__nav");
    //     if ($(window).scrollTop() > 300) {
    //         nav.addClass("fixed");
    //     } else {
    //         nav.removeClass("fixed");
    //     }
    // });
    let btnUp = $(".footer__btnUp");
    $(window).on("scroll", function () {
        let nav = $(".header__nav");
        if ($(window).scrollTop() > 20) {
            btnUp.addClass("show");
        } else {
            btnUp.removeClass("show");
        }
    });
    btnUp.on("click", function (event) {
        event.preventDefault();
        $('html, body').animate({ scrollTop: 0 },1000);
        // let href = $(this).attr("href");
        // let dest = $(href).offset().top;
        // $("body,html").animate({ scrollTop: dest }, 1000);
    });

    //Фильтрация
    let btns = $(".works__btn");
    $(btns[0]).addClass("active").siblings().removeClass("active");
    btns.on("click", function () {
        $(this).addClass("active").siblings().removeClass("active");
        let cards = $(".work__item");
        cards.removeClass("active");
        let btnText = $(this).text().toLowerCase();
        let final = cards.filter(function () {
            if (btnText === "all") {
                return cards;
            } else {
                return $(this).data("category") === btnText;
            }
        });
        final.each(function () {
            $(this).addClass("active");
        });
    });

    // Настройка слайдера
    $(function () {
        // Owl Carousel
        var owl = $(".slider__slides");
        owl.owlCarousel({
            items: 1,
            nav: true,
            // autoHeight: true,
            animateOut: 'fadeOut'
        });
    });

    // Настройка темы
    let theme;
    let list_divs = "body, .themes2, .header__nav, .works, .about, .sendForm, .map, .values, .portfolioDetail, .blogs, .blog__post";
    if (!localStorage.getItem("theme")) {
        localStorage.setItem("theme", "light");
    }
    theme = localStorage.getItem("theme");

    $(list_divs).addClass(theme);

    if (theme === "light") {
        $("#switch").prop("checked", true);
    } else {
        $("#switch").prop("checked", false);
    }

    $("#switch").on("change", function () {
        $(list_divs).removeClass(theme);
        if ($(this).prop("checked") === true) {
            localStorage.setItem("theme", "light");
        } else {
            localStorage.setItem("theme", "dark");
        }
        theme = localStorage.getItem("theme");
        $(list_divs).addClass(theme);
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

    fileLoad.on("change", function () {
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
            src: `<?php bloginfo('template_url'); ?>/img/${fileName}`,
            alt: "",
        }).appendTo(div2);

        let div3 = $("<div/>", {
            class: divAdd3,
        }).appendTo(div);

        let p = $("<p/>", {
            text: "+",
        }).appendTo(div3);
    }

    // Валидация формы ввода на странице контактов

    $(".sendForm__form").on("submit", function(event) {
        event.preventDefault();
        console.log("submit");
        if (!validateForm()) {

            // $(".overlay-container").fadeIn(function() {
            //     window.setTimeout(function() {
            //         $(".window-container").addClass("window-container-visible");
            //     }, 100);
            // });

            // let el_name = $("#name");
            // let el_e = $("#email");
            // let el_web = $("#website");
            // let el_mes = $("#message");

            // $(".lbl-name").html("Ваше Имя - " + el_name.val());
            // $(".lbl-email").html("Ваш Email - " + el_e.val());
            // $(".lbl-web").html("Ваш Website - " + el_web.val());
            // $(".lbl-mes").html("Ваше Message - " + el_mes.val());

            // $(".close").on("click", function() {
            //     $(".overlay-container")
            //         .fadeOut()
            //         .end()
            //         .find(".window-container")
            //         .removeClass("window-container-visible");
            // });

            // $(".ok").on("click", function() {
            //     // e.stopPropagation();
            //     window.setTimeout(100000);
            //     $(".sendForm__form")
            //         .unbind("submit")
            //         .submit()
            //         .fadeOut()
            //         .end()
            //         .find(".window-container")
            //         .removeClass("window-container-visible");
            //     location.href = location.href;
            // });
            // unbind("submit");

            // event.stopPropagation();
            // $(this).unbind("submit").submit();
            location.href = location.href;
        }
    });

    function validateForm() {
        // Проверка Name
        let el_name = $("#name");
        let sp_name = $(".sendForm__name");
        let v_name = true;
        if (el_name.val().length < 3) {
            sp_name.addClass("error");
        } else {
            sp_name.removeClass("error");
            v_name = false;
        }

        // Проверка Email
        let reg = /^\w+([\.-]?\w+)*@(((([a-z0-9]{2,})|([a-z0-9][-][a-z0-9]+))[\.][a-z0-9])|([a-z0-9]+[-]?))+[a-z0-9]+\.([a-z]{2}|(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum))$/;
        let el_e = $("#email");
        let v_email = el_e.val() ? false : true;
        let sp_email = $(".sendForm__email");
        if (!v_email) {
            if (!reg.test(el_e.val())) {
                v_email = true;
            } else {
                v_email = false;
            }
        }
        if (v_email) {
            sp_email.addClass("error");
        } else {
            sp_email.removeClass("error");
        }

        // Проверка Messsage
        let el_mes = $("#message");
        let sp_mes = $(".sendForm__message");
        let v_mes = true;
        if (el_mes.val().length < 1) {
            sp_mes.addClass("error");
        } else {
            sp_mes.removeClass("error");
            v_mes = false;
        }

        return v_name || v_email || v_mes;
    }
});
