<?php
/**
 * Header — phong cách Investing.com (2 hàng, nền tối).
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<header class="site-header">
	<!-- Hàng 1: logo + nav chính -->
	<div class="site-header__row1">
		<div class="container">
			<a class="site-logo" href="<?php echo esc_url( home_url( '/' ) ); ?>">
				<?php if ( has_custom_logo() ) { the_custom_logo(); } else { echo 'Crypto<span>WP</span>'; } ?>
			</a>
			<button class="nav-toggle" aria-label="Mở menu">☰</button>
			<nav class="nav-primary">
				<ul>
					<li class="active"><a href="<?php echo esc_url( get_post_type_archive_link( 'broker' ) ?: home_url( '/' ) ); ?>">Brokers</a></li>
					<li><a href="#">Markets</a></li>
					<li><a href="#">News</a></li>
					<li><a href="#">Analysis</a></li>
					<li><a href="#">Charts</a></li>
					<li><a href="#">Technical</a></li>
					<li><a href="#">Tools</a></li>
					<li><a href="#">Watchlist</a></li>
					<li><a href="#">Academy</a></li>
				</ul>
			</nav>
			<a class="header-cta" href="#">Sign In</a>
		</div>
	</div>
	<!-- Hàng 2: submenu broker -->
	<div class="site-header__row2">
		<div class="container">
			<nav class="nav-sub">
				<ul>
					<li><a href="#">Brokers</a></li>
					<li><a href="#">Crypto Brokers</a></li>
					<li class="active"><a href="<?php echo esc_url( get_post_type_archive_link( 'broker' ) ?: home_url( '/' ) ); ?>">Forex Brokers</a></li>
					<li><a href="#">Futures Brokers</a></li>
					<li><a href="#">Stock Brokers</a></li>
					<li><a href="#">Prop Trading</a></li>
					<li><a href="#">Trading Platforms</a></li>
					<li><a href="#">Broker Reviews</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>

<main class="site-main">
