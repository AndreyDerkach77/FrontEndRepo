<?php
/**
 * Template Name: Blog
 */

get_header(); ?>

<section class="heading">
    <div class="heading__item">
        <img class="heading_img" src="<?php bloginfo('template_url'); ?>/img/blog.png" alt="" />
        <div class="heading__container">
            <div class="heading__texts">
                <h2>News About Lian</h2>
                <p>Latest News & Insights</p>
            </div>
        </div>
    </div>
</section>
<section class="blogs">
    <div class="container">
        <div class="blogs__content">
            <div class="blogs__block">
                <div class="blogs__items">
                    <?php
                    $blog = new WP_Query([
                        'orderby' => 'date',
                        'order' => 'ASC',
                        'post_per_page' => 6
                    ]);
                    if ($blog->have_posts()) : while ($blog->have_posts()) : $blog->the_post(); 
                    $category = get_the_category();
                    ?>
                    

                    <div class="blogs__item active">
                        <div class="blogs__pic">
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <a href="<?php the_permalink(); ?>">
                            <div class="overlay">
                                
                                <div class="blogs__cat">
                                    <?php echo $category[0]->name; ?>
                                </div>
                                <h3><?php the_field('head_blog'); ?></h3>
                                <div class="blogs__author">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <p>by</p>
                                    <p><?php the_field('author_blog');?></p>
                                </div>
                                <div class="blogs__textOverlay">
                                    <?php the_field('text_overlay');?>
                                </div>
                                <div class="blogs__dateLinks">
                                    <div class="blogs__calend">
                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                        <p class="blogs__date"><?= get_the_date('F j Y'); ?></p>
                                    </div>
                                    <div class="blogs__links">
                                        <i class="fa fa-share-alt-square" aria-hidden="true"></i>
                                        <i class="fa fa-heart-o"></i>

                                    </div>
                                </div>
                            
                                
                                
                            </div>
                        </a>
                    </div>

                    <?php endwhile; endif;
                    wp_reset_query(); ?>
                </div>
                <a href="<?php echo esc_url(home_url('/blog/')); ?>" class="blogs__load">Load More</a>
            </div>
            <div class="blogs__sideBar">
                <div class="blogs__recentPosts">
                    <div class="blogs__recentHead">Recent posts
                        <div class="blogs__recentArrow"></div>
                    </div>
                    <div class="blogs__recentItems">
                        <?php
                        $blog = new WP_Query([
                            'orderby' => 'date',
                            'order' => 'DESC',
                            'posts_per_page' => 4
                        ]);
                        if ($blog->have_posts()) : while ($blog->have_posts()) : $blog->the_post(); 
                        ?>

                        <div class="blogs__recentItem active">                        
                            <a href="<?php the_permalink(); ?>">
                                <div class="blogs__recentItemPic">
                                    <?php the_post_thumbnail(); ?>
                                </div>
                                <div class="blogs__recentTexts">
                                    <h3><?php the_field('head_blog'); ?></h3>
                                    <p class="blogs__recentItemDate"><?= get_the_date('F j Y'); ?></p>
                                </div>
                                <!-- <div class="overlay">
                                    
                                    <div class="blogs__cat">
                                        <?php echo $category[0]->name; ?>
                                    </div>
                                    <h3><?php the_field('head_blog'); ?></h3>
                                    <div class="blogs__author">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <p>by</p>
                                        <p><?php the_field('author_blog');?></p>
                                    </div>
                                    <div class="blogs__textOverlay">
                                        <?php the_field('text_overlay');?>
                                    </div>
                                    <div class="blogs__dateLinks">
                                        <div class="blogs__calend">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                            <p class="blogs__date"><?= get_the_date('F j Y'); ?></p>
                                        </div>
                                        <div class="blogs__links">
                                            <i class="fa fa-share-alt-square" aria-hidden="true"></i>
                                            <i class="fa fa-heart-o"></i>

                                        </div>
                                    </div>
                                
                                    
                                    
                                </div> -->
                            </a>
                        </div>

                        <?php endwhile; endif;
                        wp_reset_query(); ?>
                    </div>
                </div>
                <div class="blogs__tags">
                    <div class="blogs__tagsHead">Popular tags
                        <div class="blogs__tagsArrow"></div>
                    </div>
                    <div class="blogs__tagsItems">
                        <?php
                        $tags = get_terms('post_tag', 'orderby=name&hide_empty=0');
                        if ($tags) {
                        foreach ($tags as $tag) { ?>
                        <p><a href="<?php echo esc_url(get_tag_link($tag->term_id)); ?>"><?php echo esc_html($tag->name); ?></a></p>
                            <?php }
                        } ?>
                    </div>
                </div>
                <div class="blogs__instagram">
                    <div class="blogs__instagramHead">Instagram
                        <div class="blogs__instagramArrow"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>