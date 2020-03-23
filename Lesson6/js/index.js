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
});
