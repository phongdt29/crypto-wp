<?php
/**
 * Crypto Broker theme functions.
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

function cbk_setup() {
	add_theme_support( 'title-tag' );
	add_theme_support( 'post-thumbnails' );
	add_theme_support( 'html5', array( 'search-form', 'gallery', 'caption', 'style', 'script' ) );
	add_theme_support( 'custom-logo' );
	register_nav_menus( array(
		'primary' => 'Primary Menu',
		'footer'  => 'Footer Menu',
	) );
}
add_action( 'after_setup_theme', 'cbk_setup' );

function cbk_assets() {
	// Open Sans — đúng font Investing.com dùng.
	wp_enqueue_style( 'cbk-fonts', 'https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap', array(), null );
	wp_enqueue_style( 'crypto-broker', get_stylesheet_uri(), array( 'cbk-fonts' ), '1.4.0' );
	wp_enqueue_script( 'crypto-broker', get_template_directory_uri() . '/assets/theme.js', array(), '1.4.0', true );
}
add_action( 'wp_enqueue_scripts', 'cbk_assets' );

/**
 * Fallback menu khi chưa gán menu — link mặc định.
 */
function cbk_fallback_menu() {
	echo '<ul id="primary-menu" class="nav-list">';
	echo '<li><a href="' . esc_url( home_url( '/' ) ) . '">Home</a></li>';
	$brokers = get_post_type_archive_link( 'broker' );
	if ( $brokers ) {
		echo '<li><a href="' . esc_url( $brokers ) . '">Forex Brokers</a></li>';
	}
	echo '<li><a href="#brkm-faq">FAQ</a></li>';
	echo '</ul>';
}

/**
 * Render danh sách menu chính.
 */
function cbk_primary_menu() {
	if ( has_nav_menu( 'primary' ) ) {
		wp_nav_menu( array(
			'theme_location' => 'primary',
			'container'      => false,
			'menu_class'     => 'nav-list',
			'menu_id'        => 'primary-menu',
		) );
	} else {
		cbk_fallback_menu();
	}
}

/**
 * Helper hiển thị một dòng spec broker.
 */
function cbk_spec( $label, $value ) {
	if ( '' === $value || null === $value ) {
		return;
	}
	echo '<div class="spec"><span>' . esc_html( $label ) . '</span><b>' . esc_html( $value ) . '</b></div>';
}
