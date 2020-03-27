jQuery(document).ready(function($) {
    $('.easy__btn').hover(
        function(){
            $('.easy__btn').css('box-shadow','0 0 40px rgba(0, 0, 0, 0.4)');
            $('.easy__item').css('box-shadow','0 0 40px rgba(0, 0, 0, 0.4)');
        },
        function(){
            $('.easy__btn').css('box-shadow','');
            $('.easy__item').css('box-shadow','');
        }
    );

    var teamimg1 = document.getElementById('team__img1');
    var teamimg2 = document.getElementById('team__img2');
    var teamimg3 = document.getElementById('team__img3');

    teamimg1.onmouseenter = function() { 
        $('.team__head').text('Merilin Monro');
        $('.team__sub').text('Какой-то текст про Merilin Monro');
    }
    // teamimg1.onmouseleave = function() { // курсор ушёл с элемента-родителя
    //     $('.team__head').text('');
    //     $('.team__sub').text('');
    //   }
    teamimg2.onmouseenter = function() { 
        $('.team__head').text('Sophie Turner');
        $('.team__sub').text('А это текст про Sophie Turner');
    }
    // teamimg2.onmouseleave = function() { // курсор ушёл с элемента-родителя
    //     $('.team__head').text('');
    //     $('.team__sub').text('');
    //   }
    teamimg3.onmouseenter = function() { 
        $('.team__head').text('Mister X');
        $('.team__sub').text('Что-то про достоинства Mister X');
    }
    // teamimg3.onmouseleave = function() { // курсор ушёл с элемента-родителя
    //     $('.team__head').text('');
    //     $('.team__sub').text('');
    //   }

});
