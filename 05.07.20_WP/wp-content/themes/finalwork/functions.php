<?php
function theme_load_resources()
{
    $theme_uri = get_template_directory_uri();
    //    Jquery
    wp_enqueue_script('jquery_theme_functions', $theme_uri . '/libs/jquery-3.5.0.js', array(), false, false);

    // Fotorama 

    wp_enqueue_script('Fotorama_js ', 'https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js', array(), false, false);
    wp_enqueue_style( 'Fotorama_css', 'https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css', false );
	
	//    owl
	wp_enqueue_style('owl_theme_style', $theme_uri . '/libs/owl.carousel.min.css');
	wp_enqueue_style('owlTheme_theme_style', $theme_uri . '/libs/owl.theme.default.min.css');
	wp_enqueue_style( 'animate-css', 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css', false );
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

add_action('wp_enqueue_scripts', 'theme_load_resources');

/* Reg MENU */
register_nav_menus(array(
    'header_menu' => 'Меню в header',
    'footer_menu' => 'Меню в footer',
));

function register_post_types()
{
    register_post_type('portfolio', array(
        'labels' => array(
            'name' => 'Портфолио',
            'all_items' => 'Все работы',
            'add_new' => 'Добавить работу',
        ),
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus ' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'portfolio'),
        'capability_type' => 'post',
        'has_archive' => 'portfolio',
        'hierarchical' => false,
        'menu_position' => null,
        'menu_icon' => 'dashicons-category',
        'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
    ));
}

add_action('init', 'register_post_types');

add_theme_support('post-thumbnails');

/**
 * Remove tag <p> и <br>.
 */
 
define('WPCF7_AUTOP', false );
 
/**
 * Remove tag <span>.
 */
 
add_filter('wpcf7_form_elements', function($content) {
 
$content = preg_replace('/<(span).*?class="\s*(?:.*\s)?wpcf7-form-control-wrap(?:\s[^"]+)?\s*"[^\>]*>(.*)<\/\1>/i', '\2', $content);
 
return $content;
 
});

?>