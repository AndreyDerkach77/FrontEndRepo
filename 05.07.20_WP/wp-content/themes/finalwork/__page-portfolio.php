<?php
/**
 * Template Name: Portfolio_backup
 */

get_header(); ?>

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
            <?php if (have_rows('portfolio_cat')):
                while (have_rows('portfolio_cat')) : the_row(); ?>
                <div class="works__btn"><?php the_sub_field('portfolio_cat'); ?></div>
                <hr />
            <?php endwhile; endif; ?>   
        </div>

        <div class="works__items">
            <?php if (have_rows('portfolio__item')):
                while (have_rows('portfolio__item')) : the_row(); 
                $img = get_sub_field('portfolio_pic');
                ?>
                <div class="work__item active" data-category="<?php the_sub_field('portfolio-data-category'); ?>">
                    <div class="works__pic">
                        <img src="<?php echo esc_url($img['url']) ?>" alt="<?php echo esc_attr($img['alt']); ?>" />
                    </div>
                    <div class="overlay">
                        <p><?php the_sub_field('portfolio_overlay'); ?></p>
                    </div>
                    </div>

            <?php endwhile; endif; ?>                

        </div>
        <label class="works__load" for="fileLoad">Load More</label>
        <input
            class="fileLoad"
            id="fileLoad"
            name="fileLoad"
            type="file"
        />
    </div>
</section>

<?php get_footer(); ?>