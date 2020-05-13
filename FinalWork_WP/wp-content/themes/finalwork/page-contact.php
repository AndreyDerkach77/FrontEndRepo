<?php
/**
 * Template Name: Contacts
 */

get_header(); ?>

<section class="heading">
    <div class="heading__item">
        <img class="heading_img" src="<?php bloginfo('template_url'); ?>/img/contact.png" alt="" />
        <div class="heading__container">
            <div class="heading__texts">
                <h2>Get in Touch</h2>
                <p>Contact us Today</p>
            </div>
        </div>
    </div>
</section>
<section class="sendForm">
    <div class="container">
        <div class="contact__part">
            <div class="sendForm__contacts">
                <h3>Office Info</h3>
                <p class="contact__text">People Behind the Success of our Company</p>
                <p class="contact__hours">Office Hours:<span> <?php the_field('office_hours'); ?></span></p>
                <p class="contact__adress">Address:<span> <?php the_field('office_adress'); ?></span></p>
                <p class="contact__tel">Tell:<span> &nbsp; <?php the_field('office_tel'); ?></span></p>
                <p class="contact__fax">Fax:<span> &nbsp; <?php the_field('office_fax'); ?></span></p>
            </div>
            <form action="#" class="sendForm__form" name="sendForm" novalidate>
                <div class="sendForm__inputs">
                    <div class="sendForm__input">
                        <input
                            type="text"
                            name="name"
                            id="name"
                            placeholder="Name"
                        />
                        <span class="sendForm__name"
                            >Введите имя больше 3-х символов</span
                        >
                    </div>
                    <div class="sendForm__input">
                        <input
                            type="email"
                            name="email"
                            id="email"
                            placeholder="Email"
                        />
                        <span class="sendForm__email"
                            >Введите корректный Email (имя@адрес.com)</span
                        >
                    </div>
                </div>
                <div class="sendForm__textarea">
                    <textarea
                        name="message"
                        id="message"
                        placeholder="Messsage"
                    ></textarea>
                    <span class="sendForm__message"
                        >Введите корректное сообщение</span
                    >
                </div>
                <button
                    type="submit"
                    class="sendForm__btn"
                    name="btnSubmit"
                    data-type="zoomout"
                >
                    Send Messsage
                </button>
            </form>
        </div>
    </div>
</section>
<section class="map">
    <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12105.151454710154!2d-73.83389268339894!3d40.66762586575921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2676798cbb955%3A0xc02e0117cc546ffe!2s110-00%20Rockaway%20Blvd%2C%20South%20Ozone%20Park%2C%20NY%2011420%2C%20%D0%A1%D0%A8%D0%90!5e0!3m2!1sru!2sua!4v1589325900416!5m2!1sru!2sua" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
</section>
<section class="values">
    <div class="container">
        <h6 class="values__title"><?php the_field('values_title'); ?></h6>
        <p class="values__text"><?php the_field('values_text'); ?></p>

        <div class="values__items">

            <?php if (have_rows('values_item')):
                while (have_rows('values_item')) : the_row(); 
                $img = get_sub_field('values_img');?>

                <div class="values__item">
                    <div class="values__img">
                    <img src="<?php echo esc_url($img['url']) ?>" alt="<?php echo esc_attr($img['alt']); ?>" />
                    </div>
                    <div class="values__texts">
                        <h6><?php the_sub_field('values_text_h6'); ?></h6>
                        <p><?php the_sub_field('values_text_p'); ?></p>
                    </div>
                </div>

            <?php endwhile; endif; ?>

            <!-- <div class="values__item">
                <div class="values__img">
                    <img src="<?php bloginfo('template_url'); ?>/img/contact_val1.png" alt="contact_val1" />
                </div>
                <div class="values__texts">
                    <h6>Who We Are</h6>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.</p>
                </div>
            </div> -->
            <!-- <div class="values__item">
                <div class="values__img">
                    <img src="<?php bloginfo('template_url'); ?>/img/contact_val2.png" alt="contact_val2" />
                </div>
                <div class="values__texts">
                    <h6>Our Vision</h6>
                    <p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.</p>
                </div>
            </div>
            <div class="values__item">
                <div class="values__img">
                    <img src="<?php bloginfo('template_url'); ?>/img/contact_val3.png" alt="contact_val3" />
                </div>
                <div class="values__texts">
                    <h6>Our Mission</h6>
                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan.</p>
                </div>
            </div> -->
        </div>
    </div>
</section>

<?php get_footer(); ?>