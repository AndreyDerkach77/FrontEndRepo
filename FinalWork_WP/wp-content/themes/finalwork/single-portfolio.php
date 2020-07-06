<?php
get_header();
?>

<section class="heading">
    <div class="heading__item">
        <img class="heading_img" src="<?php bloginfo('template_url'); ?>/img/portfolio.png" alt="" />
        <div class="heading__container">
            <div class="heading__texts">
                <h2>Latest Projects</h2>
                <p>We Deliver Quality</p>
            </div>
        </div>
    </div>
</section>
<section class="portfolioHead">
    <div class="container">
        <div class="portfolioDetail__head">
            <div class="portfolioDetail__prevNext">
                <?php  
                    $prev_post = get_permalink(get_previous_post());
                    $next_post = get_permalink(get_next_post());
                    $page_post = get_permalink();        

                    if ($prev_post == $page_post) { ?>
                        <a href="" class="portfolio__prev disabled"><i class="fa fa-angle-left"></i> Previous</a>
                    <?php } else {?>
                            <a href="<?php echo $prev_post ; ?>" class="portfolio__prev"><i class="fa fa-angle-left"></i> Previous</a>
                    <?php }

                    if ($next_post == $page_post) { ?>
                            <a href="" class="portfolio__next disabled">Next <i class="fa fa-angle-right"></i></a>
                    <?php } else {?>
                            <a href="<?php echo $next_post ; ?>" class="portfolio__next">Next <i class="fa fa-angle-right"></i></a>
                    <?php }
                ?>
            </div>
            <a href="<?php echo esc_url(home_url('/portfolio/')); ?>" class="portfolio__home"><i class="fa fa-list"></i> Show All</a>
        </div>
    </div>
</section>
<section class="portfolioDetail">
    <div class="container">
        
        <?php if (have_posts()) : while (have_posts()) : the_post(); 
        $image = get_field('portfolio_pic', get_the_id());
        $category = get_field('portfolio-data-category', get_the_id());
        ?>
        <div class="portfolioDetail__items">
            <div class="portfolioDetail__item">
                <h2 class="portfolioDetail__title"><?php the_title(); ?></h2>
                <h4 class="portfolioDetail__sub"><?php the_field('portfolio_sub', get_the_id()); ?></h4>
                <div class="portfolioDetail__texts">
                    <div class="portfolioDetail__dateLike">
                        <p class="portfolioDetail__date"><?= get_the_date('F j Y'); ?></p>
                        <p class="portfolioDetail__like"><i class="fa fa-heart-o"></i> 324 likes</p>
                    </div>
                    <p class="portfolioDetail__text"><?php the_content(); ?></p>
                </div>
                <p class="portfolioDetail__role">Role On Project:</p>
                <p class="portfolioDetail__roles"><?php the_field('portfolio_roles', get_the_id()); ?></p>
                <p class="portfolioDetail__tag">Tags:</p>
                <p class="portfolioDetail__tags"><?= $category; ?></p>

            </div>
            <div class="portfolioDetail__item fotorama" data-transition="crossfade" data-nav="thumbs" data-width="550" data-height="350" data-thumbwidth="125" data-thumbheight="115" data-allowfullscreen="true" data-loop="true" data-arrows="false">
            <?php
            if ( is_array( $image ) || is_object( $image ) ) {
                foreach($image as $img):  ?>
                    <img src="<?php echo esc_url($img['url']) ?>" alt="<?php echo esc_attr($img['alt']); ?>" />
                <?php endforeach; 
            } ?>
            </div>

        </div>
        <?php endwhile; endif; ?>
        <ul class="menu">
            <li class="share right">
                <div class="shareBtn">
                    <i class="fa fa-share-alt btnI"></i> Share
                </div>
                <ul class="submenu">
                    <li>
                        <a href="https://www.facebook.com/"
                            ><i class="fa fa-facebook"></i
                        ></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </li>
                </ul>
            </li>
        </ul>

        <?php
            $host = 'localhost';
            $db   = 'finalwork';
            $user = 'root';
            $pass = '';
            $charset = 'utf8';

            $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
            $opt = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES   => false,
            ];
            $pdo = new PDO($dsn, $user, $pass, $opt);

            $stmt = $pdo->prepare('SELECT count(*) count_rec FROM `wdsfsdfsdsdfsdfp_postmeta` WHERE `meta_value`=? and `meta_key`="portfolio-data-category"');
            $stmt->execute(array($category));
            $countWorks = $stmt->fetchColumn();

            if ($countWorks>1) { ?>

                <h2 class="related__head">Related Works</h2>
                <p class="related__text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>

                <div class="related__items">
                    <?php
                        $portfolio = new WP_Query([
                            'post_type' => 'portfolio',
                            'orderby' => 'date',
                            'order' => 'DESC'
                        ]);
                        if ($portfolio->have_posts()) : while ($portfolio->have_posts()) : $portfolio->the_post(); 
                        $images = get_field('portfolio_pic', get_the_id());
                        $category_all = get_field('portfolio-data-category', get_the_id());
                            if (($category_all == $category) & ($images != $image)) {?>

                            <div class="related__item" data-category="<?php the_field('portfolio-data-category', get_the_id()); ?>">
                                <?php foreach($images as $img):  ?>
                                    <img src="<?php echo $img['url'] ?>" alt="<?php echo $img['alt']; ?>" />
                                <?php break; endforeach; ?>
                                <div class="related__overlay">
                                    <a href="<?php the_permalink(); ?>"><?php the_field('portfolio_overlay', get_the_id()); ?></a>
                                </div>
                            </div>

                        <?php } endwhile; endif;
                        wp_reset_query(); ?>
                </div>

                <?php 
            } ?>
    </div>
</section>

<?php
get_footer();
