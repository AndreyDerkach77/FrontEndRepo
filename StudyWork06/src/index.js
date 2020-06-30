/// <reference path="../typings/globals/jquery/index.d.ts" />
jQuery(document).ready(function($) {
    let btn = $(".header__cart");
    let close = $(".header__cartClose");
    let modal = $(".header__cartModal");

    let btnMap = $(".map__title");
    let closeMap = $(".map__close");
    let modalMap = $(".map__modal");

    let body = $("body");

    btn.on("click", function() {
        modal.addClass("opened");       
        body.addClass("hidden");
        // modal.fadeToggle();
    });

    close.on("click", function() {
        modal.removeClass("opened");
        body.removeClass("hidden");
    });
//////////////////////////////////////////////////////////////////////////////
    btnMap.on("click", function() {
        modalMap.addClass("opened");       
        body.addClass("hidden");
        // modal.fadeToggle();
    });

    closeMap.on("click", function() {
        modalMap.removeClass("opened");
        body.removeClass("hidden");
    });

    $(function() {
        $(".header__searchBtn").on("click", function() {
            $(".header__input").toggleClass("opened");
        });
    });

    let menuBtn = $(".header__burger");
    menuBtn.on("click", function() {
        let navigation = $(".header__navList");
        navigation.toggleClass("active");
    });

});
