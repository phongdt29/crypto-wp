<?php
/**
 * Single broker — trang đánh giá chi tiết 1 broker.
 */
get_header();

while ( have_posts() ) :
	the_post();
	$id       = get_the_ID();
	$rating   = get_post_meta( $id, '_broker_rating', true );
	$deposit  = get_post_meta( $id, '_broker_min_deposit', true );
	$reg      = get_post_meta( $id, '_broker_regulators', true );
	$founded  = get_post_meta( $id, '_broker_founded', true );
	$spread   = get_post_meta( $id, '_broker_spread', true );
	$leverage = get_post_meta( $id, '_broker_leverage', true );
	$platform = get_post_meta( $id, '_broker_platforms', true );
	$visit    = get_post_meta( $id, '_broker_visit_url', true );
	$pros     = array_filter( array_map( 'trim', explode( "\n", (string) get_post_meta( $id, '_broker_pros', true ) ) ) );
	$cons     = array_filter( array_map( 'trim', explode( "\n", (string) get_post_meta( $id, '_broker_cons', true ) ) ) );
	?>

	<div class="container">
		<div class="breadcrumb">
			<a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> ›
			<a href="<?php echo esc_url( get_post_type_archive_link( 'broker' ) ); ?>">Forex Brokers</a> ›
			<?php the_title(); ?>
		</div>
	</div>

	<section class="section" style="padding-top:10px">
		<div class="container">
			<div class="broker-hero">
				<div class="logo">
					<?php if ( has_post_thumbnail() ) { the_post_thumbnail( 'medium' ); } else { echo '<strong style="color:var(--c-blue);font-size:1.6rem">' . esc_html( mb_substr( get_the_title(), 0, 2 ) ) . '</strong>'; } ?>
				</div>
				<div>
					<h1><?php the_title(); ?></h1>
					<div class="broker-meta">
						<?php if ( $reg ) : ?><span>🛡️ <?php echo esc_html( $reg ); ?></span><?php endif; ?>
						<?php if ( $founded ) : ?><span>📅 Since <?php echo esc_html( $founded ); ?></span><?php endif; ?>
					</div>
				</div>
				<?php if ( '' !== $rating ) : ?>
				<div class="broker-score">
					<b><?php echo esc_html( number_format( (float) $rating, 1 ) ); ?></b>
					<small>/ 5 rating</small>
				</div>
				<?php endif; ?>
			</div>

			<div class="specs">
				<?php
				cbk_spec( 'Min Deposit', '' !== $deposit ? '$' . number_format( (float) $deposit ) : '' );
				cbk_spec( 'Spread', $spread );
				cbk_spec( 'Max Leverage', $leverage );
				cbk_spec( 'Platforms', $platform );
				cbk_spec( 'Regulators', $reg );
				cbk_spec( 'Founded', $founded );
				?>
			</div>

			<?php if ( $visit ) : ?>
				<a class="btn-visit" href="<?php echo esc_url( $visit ); ?>" target="_blank" rel="nofollow sponsored noopener">Open account at <?php the_title(); ?> →</a>
			<?php endif; ?>

			<?php if ( $pros || $cons ) : ?>
			<div class="proscons">
				<div class="pros">
					<h3>✔ Pros</h3>
					<ul><?php foreach ( $pros as $p ) { echo '<li>' . esc_html( $p ) . '</li>'; } ?></ul>
				</div>
				<div class="cons">
					<h3>✕ Cons</h3>
					<ul><?php foreach ( $cons as $c ) { echo '<li>' . esc_html( $c ) . '</li>'; } ?></ul>
				</div>
			</div>
			<?php endif; ?>

			<div class="prose">
				<h2>Detailed Review</h2>
				<?php the_content(); ?>
			</div>
		</div>
	</section>

<?php
endwhile;
get_footer();
