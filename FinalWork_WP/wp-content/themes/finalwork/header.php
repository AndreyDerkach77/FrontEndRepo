<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta
          name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
  />
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <!-- Favicon -->
  <link rel="icon" href="<?php bloginfo('template_url'); ?>/img/fav.png" type="img/x-icon"/>
  <link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/img/fav.png"
        type="img/x-icon"/>
  <title><?php bloginfo('name'); ?></title>
  <!-- <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap"
      rel="stylesheet"
	/>
	 -->
    <!-- <link
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous"
    /> -->
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<header class="header" id="header">
            <div class="container">
                <nav class="header__nav">
                    <a href="<?php echo esc_url(home_url('/')); ?>" class="header__logo"
                        ><img src="<?php bloginfo('template_url'); ?>/img/logo.png" alt=""
					/></a>
                    <div class="header__navPart">
						<?php wp_nav_menu(array(
							'theme_location' => 'header_menu',
							'container' => false,
							'menu_class' => 'header__navList',
						)); ?>
                        <!-- <ul class="header__navList">
                            <li><a class="active" href="./home.html">Home</a></li>
                            <li><a href="./about.html">About</a></li>
                            <li><a href="./portfolio.html">Portfolio</a></li>
                            <li><a href="./blog.html">Blog</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul> -->
                        <div class="header__burger">
                            <span class="header__line header__line_top"></span>
                            <span
                                class="header__line header__line_middle"
                            ></span>
                            <span
                                class="header__line header__line_bottom"
                            ></span>
                        </div>
                        <form action="#" class="header__search">
                            <input
                                type="text"
                                name="query"
                                class="header__input"
                            />
                            <a class="header__searchBtn"
                                ><i class="fa fa-search"></i
                            ></a>
                        </form>
                    </div>
                </nav>
            </div>
        </header>