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
	wp_enqueue_style( 'crypto-broker', get_stylesheet_uri(), array( 'cbk-fonts' ), '2.0.0' );
	wp_enqueue_script( 'crypto-broker', get_template_directory_uri() . '/assets/theme.js', array(), '2.0.0', true );
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

/**
 * Sinh một QR code minh hoạ (SVG) trông chi tiết như QR thật.
 * Mang tính trang trí — thay bằng QR thật khi có link app.
 */
function cbk_qr_svg( $size_px = 120 ) {
	$n    = 29;                       // số module mỗi chiều
	$cell = $size_px / $n;
	$total = $n * $cell;

	$in_finder = function ( $x, $y ) use ( $n ) {
		$zones = array( array( 0, 0 ), array( $n - 7, 0 ), array( 0, $n - 7 ) );
		foreach ( $zones as $z ) {
			if ( $x >= $z[0] && $x < $z[0] + 7 && $y >= $z[1] && $y < $z[1] + 7 ) {
				return true;
			}
		}
		return false;
	};

	// Module dữ liệu (giả lập, tất định).
	$data = '';
	for ( $y = 0; $y < $n; $y++ ) {
		for ( $x = 0; $x < $n; $x++ ) {
			if ( $in_finder( $x, $y ) ) {
				continue;
			}
			$h = ( $x * 49297 + $y * 233280 + $x * $y * 12345 ) % 100;
			if ( $h < 48 ) {
				$data .= '<rect x="' . ( $x * $cell ) . '" y="' . ( $y * $cell ) . '" width="' . $cell . '" height="' . $cell . '"/>';
			}
		}
	}

	// 3 ô định vị (finder pattern).
	$finder = function ( $ox, $oy ) use ( $cell ) {
		$o = $ox * $cell; $p = $oy * $cell; $u = $cell;
		return '<rect x="' . $o . '" y="' . $p . '" width="' . ( 7 * $u ) . '" height="' . ( 7 * $u ) . '" fill="#111"/>'
			. '<rect x="' . ( $o + $u ) . '" y="' . ( $p + $u ) . '" width="' . ( 5 * $u ) . '" height="' . ( 5 * $u ) . '" fill="#fff"/>'
			. '<rect x="' . ( $o + 2 * $u ) . '" y="' . ( $p + 2 * $u ) . '" width="' . ( 3 * $u ) . '" height="' . ( 3 * $u ) . '" fill="#111"/>';
	};
	$finders = $finder( 0, 0 ) . $finder( $n - 7, 0 ) . $finder( 0, $n - 7 );

	return '<svg viewBox="0 0 ' . $total . ' ' . $total . '" width="' . $size_px . '" height="' . $size_px . '" shape-rendering="crispEdges" role="img" aria-label="QR code">'
		. '<rect width="' . $total . '" height="' . $total . '" fill="#fff"/>'
		. '<g fill="#111">' . $data . '</g>' . $finders . '</svg>';
}
