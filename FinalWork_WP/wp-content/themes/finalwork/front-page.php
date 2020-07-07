<?php
/**
 * Template Name: Home
 * 
 * Show default home page
 * 
 */
?>
   <?php get_header(); ?>
 
        <section class="slider">
            <div class="slider__slides owl-carousel">
                <?php if (have_rows('slider__slide')):
                    while (have_rows('slider__slide')) : the_row(); 
                    $img = get_sub_field('slider__img');
                    ?>
                    <div class="slider__slide">
                        <img src="<?php echo esc_url($img['url']) ?>" alt="<?php echo esc_attr($img['alt']); ?>" />
                        <div class="slider__texts">
                            <h2><?php the_sub_field('slider_head'); ?></h2>
                            <p><?php the_sub_field('slider_text'); ?></p>
                        </div>
                    </div>

                <?php endwhile; endif; ?>
            </div>
        </section>

        <!-- <section class="slider">
            <div class="slider__slides owl-carousel">
                <div class="slider__slide">
                    <img src="<?php bloginfo('template_url'); ?>/img/slide1.jpg" alt="" />
                    <div class="slider__texts">
                        <h2>Lian Creative Agency</h2>
                        <p>Minimal Freelance Portfolio</p>
                    </div>
                </div>
                <div class="slider__slide">
                    <img src="<?php bloginfo('template_url'); ?>/img/slide2.jpg" alt="" />
                    <div class="slider__texts">
                        <h2>Design & Branding</h2>
                        <p>We Deliver Quality Results</p>
                    </div>
                </div>
            </div>
        </section> -->

        <section class="works">
            <div class="container">
                <!-- <div class="works__nav"> -->
                    <!-- <?php if (have_rows('works_cat')):
                        while (have_rows('works_cat')) : the_row(); ?>
                        <div class="works__btn"><?php the_sub_field('work_cat'); ?></div>
                        <hr />
                    <?php endwhile; endif; ?>    -->

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
                <!-- </div> -->

                <div class="works__items">

                    <?php if (have_rows('work__item')):
                        while (have_rows('work__item')) : the_row(); 
                        $img = get_sub_field('works_pic');
                        ?>
                        <div class="work__item active" data-category="<?php the_field('data-category'); ?>">
                            <div class="works__pic">
                                <img src="<?php echo esc_url($img['url']) ?>" alt="<?php echo esc_attr($img['alt']); ?>" />
                            </div>
                            <!-- <div class="overlay">
                                <p><?php the_sub_field('overlay'); ?></p>
                            </div> -->
                         </div>

                    <?php endwhile; endif; ?>                
                
                    <!-- <div class="work__item active" data-category="logo">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work1.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="wordpress">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work2.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="web design">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work3.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="ui/ix">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work4.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="mobile app">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work5.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="branding">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work6.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="branding">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work7.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="web design">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work8.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="logo">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work9.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div>
                    <div class="work__item active" data-category="mobile app">
                        <div class="works__pic">
                            <img src="<?php bloginfo('template_url'); ?>/img/work10.png" alt="" />
                        </div>
                        <div class="overlay">
                            <p>+</p>
                        </div>
                    </div> -->
                </div>
                <a href="<?php echo esc_url(home_url('/portfolio/')); ?>" class="works__load">Load More</a>
                <!-- <label class="works__load" for="fileLoad">Load More</label>
                <input
                    class="fileLoad"
                    id="fileLoad"
                    name="fileLoad"
                    type="file"
                /> -->
            </div>
        </section>

    <?php get_footer(); ?>