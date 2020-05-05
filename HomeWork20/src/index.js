/// <reference path="../typings/globals/jquery/index.d.ts" />
jQuery(document).ready(function($) {
    let theme;
    if (localStorage.getItem("theme") === null) {
        localStorage.setItem("theme", "light");
    }
    theme = localStorage.getItem("theme");
    console.log(theme);

    // let check;
    if (theme === "light") {
        $("#switch").prop("checked", true);
    } else {
        $("#switch").prop("checked", false);
    }
    $("body, .tabs-content, .tabs li .active").addClass(theme);

    $("#switch").on("change", function() {
        $("body, .tabs-content, .tabs li .active").removeClass(theme);
        if ($(this).prop("checked") === true) {
            localStorage.setItem("theme", "light");
        } else {
            localStorage.setItem("theme", "dark");
        }
        theme = localStorage.getItem("theme");
        $("body, .tabs-content, .tabs li .active").addClass(theme);
    });

    currentTab();
    $(".tabs-nav").on("click", ".tabs a", function(e) {
        if ($(this).attr("href")[0] == "#") {
            e.preventDefault();
            history.replaceState(null, null, $(this).attr("href"));
            currentTab();
        }
    });
    // });

    function currentTab() {
        var href =
            location.hash ||
            $(".tabs-nav .tabs a")
                .eq(0)
                .attr("href");
        $(".tabs-nav li").removeClass("active");
        $('.tabs-nav .tabs a[href="' + href + '"]').parent().addClass("active");
        $(".tabs-contents > div").hide();
        $(href).show();
    }

    // $(".tabs-nav a").click(function() {
    //     // Check for active
    //     // $(".tabs-nav li").removeClass("active");
    //     // $(this)
    //     //     .parent()
    //     //     .addClass("active");

    //     // // Display active tab
    //     // let currentTab = $(this).attr("href");
    //     // $(".tabs-content").hide();
    //     // $(currentTab).show();

    //     if ($(this).attr("href")[0] == "#") {
    //         e.preventDefault();
    //         history.replaceState(null, null, $(this).attr("href"));
    //         currentTab();
    //     }
    //     return false;
    // });
});
