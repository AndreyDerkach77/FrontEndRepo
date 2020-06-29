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
<section class="works">
    <div class="container">
        <div class="works__nav">

            <?php
                // $link = mysqli_connect("localhost", "root", "", "3491757_wpress0e9006fc");

                $link = mysqli_connect("127.0.0.1", "root", "", "3491757_wpress0e9006fc");

                $sql = 'SELECT DISTINCT `meta_value` FROM `wdsfsdfsdsdfsdfp_postmeta` WHERE `meta_key`="portfolio-data-category"';

                $result = mysqli_query($link, $sql);

                echo '<div class="works__btn">All</div><hr />';

                while ($row = mysqli_fetch_array($result)) { 
                        echo '<div class="works__btn">' . $row['meta_value'] . '</div><hr />';

                }; 
            ?>

            <!-- <div class="works__btn active">All</div>
            <hr />
            <div class="works__btn">Logo</div>
            <hr />
            <div class="works__btn">Mobile App</div>
            <hr />
            <div class="works__btn">WordPress</div>
            <hr />
            <div class="works__btn">Web Design</div>
            <hr />
            <div class="works__btn">UI/IX</div>
            <hr />
            <div class="works__btn">Branding</div> -->
        </div>


        <div class="works__items">
            <?php
            $portfolio = new WP_Query([
                'post_type' => 'portfolio',
                'orderby' => 'date',
                'order' => 'DESC'
            ]);
            if ($portfolio->have_posts()) : while ($portfolio->have_posts()) : $portfolio->the_post(); 
            $images = get_field('portfolio_pic', get_the_id());?>

                <div class="work__item active" data-category="<?php the_field('portfolio-data-category', get_the_id()); ?>">
                    <div class="works__pic">
                        <?php foreach($images as $img):  ?>
                            <img src="<?php echo $img['url'] ?>" alt="<?php echo $img['alt']; ?>" />
                        <?php break; endforeach; ?>
                    </div>
                    <a href="<?php the_permalink(); ?>">
                        <div class="overlay">
                            <?php the_field('portfolio_overlay', get_the_id()); ?>
                        </div>
                    </a>
                    <!-- <div class="overlay">
                        <a href="<?php the_permalink(); ?>"><?php the_field('portfolio_overlay', get_the_id()); ?></a>
                    </div> -->
                </div>

            <?php endwhile; endif;
            wp_reset_query(); ?>
        </div>
    </div>
</section>
<?php
get_footer();