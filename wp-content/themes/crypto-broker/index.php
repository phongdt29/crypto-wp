<?php
/**
 * Fallback template (blog, search, 404, archives).
 */
get_header();
?>
<section class="section">
	<div class="container">
		<?php if ( have_posts() ) : ?>
			<h1 class="brkm-section-title"><?php
				if ( is_home() ) { echo 'Latest Posts'; }
				elseif ( is_search() ) { printf( 'Search results: %s', esc_html( get_search_query() ) ); }
				else { the_archive_title(); }
			?></h1>
			<div class="broker-grid">
				<?php while ( have_posts() ) : the_post(); ?>
					<article class="bcard">
						<?php if ( has_post_thumbnail() ) : ?>
							<a class="logo" href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'thumbnail' ); ?></a>
						<?php endif; ?>
						<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
						<p><?php echo esc_html( wp_trim_words( get_the_excerpt(), 22 ) ); ?></p>
						<a href="<?php the_permalink(); ?>">Read more →</a>
					</article>
				<?php endwhile; ?>
			</div>
			<div style="margin-top:24px"><?php the_posts_pagination(); ?></div>
		<?php else : ?>
			<h1 class="brkm-section-title">Nothing found</h1>
			<p>Sorry, nothing matched your request.</p>
		<?php endif; ?>
	</div>
</section>
<?php
get_footer();
