<?php
function theme_load_resources()
{
    $theme_uri = get_template_directory_uri();
    //    Jquery
	wp_enqueue_script('jquery_theme_functions', $theme_uri . '/libs/jquery-3.5.0.js', array(), false, false);
	
	//    owl
	wp_enqueue_style('owl_theme_style', $theme_uri . '/libs/owl.carousel.min.css');
	wp_enqueue_style('owlTheme_theme_style', $theme_uri . '/libs/owl.theme.default.min.css');
	wp_enqueue_style( 'animate-css', 'href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"', false );
	wp_enqueue_script('owl_theme_functions', $theme_uri . '/libs/owl.carousel.min.js', array(), false, true);
	

    // Custom JS
    wp_enqueue_script('main_theme_functions', $theme_uri . '/src/index.js', array(), time(), true);

    // Custom css
	wp_enqueue_style('main_theme_style', $theme_uri . '/src/index.css', array(), time());

	if ( !is_admin() ) {
		wp_register_style('google-roboto', 'https://fonts.googleapis.com/css?family=Roboto:400,700&amp;subset=cyrillic', array(), null, 'all');
		wp_enqueue_style('google-roboto');
	}

	if (!is_admin()) {
		wp_register_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
		wp_enqueue_style('font-awesome');
	  }
	
}

// function wph_add_google_fonts() {
// 	if ( !is_admin() ) {
// 		wp_register_style('google-roboto', 'https://fonts.googleapis.com/css?family=Roboto:400,700&amp;subset=cyrillic', array(), null, 'all');
// 		wp_enqueue_style('google-roboto');
// 	}
// }

// function font_awesome() {
// 	if (!is_admin()) {
// 	  wp_register_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
// 	  wp_enqueue_style('font-awesome');
// 	}
//   }


add_action('wp_enqueue_scripts', 'theme_load_resources');
// add_action('wp_enqueue_scripts', 'wph_add_google_fonts');
// add_action('wp_enqueue_scripts', 'font_awesome');


/* multi-menu */
// if (function_exists('add_theme_support')) {
//     add_theme_support('menus');
// }

/* Reg MENU */
register_nav_menus(array(
    'header_menu' => 'Меню в header',
    'footer_menu' => 'Меню в footer',
));


?>