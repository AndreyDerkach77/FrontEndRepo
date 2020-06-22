<?php
get_header();
?>

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
<section class="blog__post">

	<div class="container">
		<?php if (have_posts()) : while (have_posts()) : the_post(); 
			?>
			<div class="blog__head">
				<h3><?php the_field('head_blog'); ?></h3>
				<div class="blog__subHead">
					<p>by <?php the_field('author_blog');?></p>
					<p class="blog__date"><?= get_the_date('F j Y'); ?></p>
					<p class="blog__like"><i class="fa fa-heart-o"></i> 324 likes</p>
				</div>
			</div>
			<div class="blog__pic">
				<?php the_post_thumbnail(); ?>
			</div>
			<p class="blog__pre"><?php the_field('preamble_blog');?></p>
			<p class="blog__quot"><?php the_field('quoting_blog');?></p>
			<h3 class="blog__title"><?php the_field('subHead_blog');?></h3>
			<p class="blog__textMain"><?php the_field('mainText_blog');?></p>

			<!--  -->
			<div class="sendForm">
				<h2 class="defaultTitle sendForm__title">Leave a comment</h2>
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
						<div class="sendForm__input">
							<input
								type="text"
								name="website"
								id="website"
								placeholder="Website"
							/>
							<span class="sendForm__website"
								>Введите корректный адрес</span
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
					<!-- <div class="overlay-container">
						<div class="window-container">
							<h3>
								Проверьте, пожалуйста, правильность ввода
								информации
							</h3>
							<p class="lbl-name"></p>
							<p class="lbl-email"></p>
							<p class="lbl-web"></p>
							<p class="lbl-mes"></p>
							<div class="modal__btns">
								<span class="ok">Подтвердить</span>
								<span class="close">Отмена</span>
							</div>
						</div>
					</div> -->
				</form>
			</div>

			<!--  -->
		<?php endwhile; endif; ?>
	</div>	


</section>

<?php
get_sidebar();
get_footer();
