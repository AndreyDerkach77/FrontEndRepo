<?php
/**
 * Template Name: About Us
 */

get_header(); ?>

<section class="heading">
    <div class="heading__item">
        <img class="heading_img" src="<?php bloginfo('template_url'); ?>/img/about.png" alt="" />
        <div class="heading__container">
            <div class="heading__texts">
                <h2>About The Agency</h2>
                <p>Welcome to Lian</p>
            </div>
        </div>
    </div>
</section>
<section class="about">
    <div class="container">
        <div class="about__storyItems">
            <div class="about__storyItem">
                <img src="<?php bloginfo('template_url'); ?>/img/about_story.png" alt="" />
            </div>
            <div class="about__storyItem">
                <div class="about__storyTexts">
                    <h2>Our Story</h2>
                    <p>
                        <?php the_field('our_story_text'); ?>
                    </p>
                </div>
                <div class="about__storySkills">
                    <h2>Our Skills</h2>
                    <img src="<?php bloginfo('template_url'); ?>/img/about_skills.png" alt="" />
                    <!-- <div class="about__storyLines">

                    </div> -->
                </div>
            </div>
        </div>
        <div class="about__team">
            <h2 class="about__teamText"><?php the_field('team_title'); ?></h2>
            <p class="about__teamSubtext"><?php the_field('team_text'); ?></p>
            <div class="about__teamItems">

                <?php if (have_rows('team_item')):
                    while (have_rows('team_item')) : the_row(); 
                    $img = get_sub_field('team_img');?>

                    <div class="about__teamItem">
                        <div class="about__teamImg">
                            <img src="<?php echo esc_url($img['url']) ?>" alt="<?php echo esc_attr($img['alt']); ?>" />
                            <div class="about__teamOverlay">
                                <div class="about__socials">
                                <?php if (have_rows('team_socials')):
                                    while (have_rows('team_socials')) : the_row(); ?>
                                        <a href="<?php the_sub_field('link'); ?>" class="about__social">
                                        <?php the_sub_field('link_icon'); ?></a>
                                        
                                    <?php endwhile; endif; ?>
                                </div>
                            </div>
                        </div>
                        <div class="about__teamTexts">
                            <h2><?php the_sub_field('team_name'); ?></h2>
                            <h6><?php the_sub_field('team_post'); ?></h6>
                            <p><?php the_sub_field('team_descr'); ?></p>
                        </div>
                    </div>

                <?php endwhile; endif; ?>

                <!-- <div class="about__teamItem">
                    <div class="about__teamImg">
                        <img src="<?php bloginfo('template_url'); ?>/img/about_team1.png" alt="about1" />
                        <div class="about__teamOverlay">
                            <div class="about__socials">
                                <a href="#" class="about__social"
                                    ><i class="fa fa-facebook-f"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-twitter"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-google-plus"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-linkedin"></i
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="about__teamTexts">
                        <h2>Lian Joy</h2>
                        <h6>CEO/Founder</h6>
                        <p>
                            Lorem ipsum dolor sit amet, conse ctetuer
                            adipi scing elit, sed diam nonu mmy nibh
                            euis mod tinci
                        </p>
                    </div>
                </div>

                <div class="about__teamItem">
                    <div class="about__teamImg">
                        <img src="<?php bloginfo('template_url'); ?>/img/about_team2.png" alt="about2" />
                        <div class="about__teamOverlay">
                            <div class="about__socials">
                                <a href="#" class="about__social"
                                    ><i class="fa fa-facebook-f"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-twitter"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-google-plus"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-linkedin"></i
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="about__teamTexts">
                        <h2>Albert Thanh</h2>
                        <h6>CEO/Founder</h6>
                        <p>
                            Lorem ipsum dolor sit amet, conse ctetuer
                            adipi scing elit, sed diam nonu mmy nibh
                            euis mod tinci
                        </p>
                    </div>
                </div>
                <div class="about__teamItem">
                    <div class="about__teamImg">
                        <img src="<?php bloginfo('template_url'); ?>/img/about_team3.png" alt="about3" />
                        <div class="about__teamOverlay">
                            <div class="about__socials">
                                <a href="#" class="about__social"
                                    ><i class="fa fa-facebook-f"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-twitter"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-google-plus"></i
                                ></a>
                                <a href="#" class="about__social"
                                    ><i class="fa fa-linkedin"></i
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="about__teamTexts">
                        <h2>Jenn Pereira</h2>
                        <h6>CEO/Founder</h6>
                        <p>
                            Lorem ipsum dolor sit amet, conse ctetuer
                            adipi scing elit, sed diam nonu mmy nibh
                            euis mod tinci
                        </p>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>