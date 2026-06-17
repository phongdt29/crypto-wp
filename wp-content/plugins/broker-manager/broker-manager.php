<?php
/**
 * Plugin Name: Broker Manager
 * Description: Quản lý danh sách broker (Custom Post Type) + bảng so sánh kiểu Investing.com. Cung cấp shortcode [broker_comparison] và [broker_faq].
 * Version: 1.0.0
 * Author: Crypto WP
 * Text Domain: broker-manager
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

define( 'BRKM_VERSION', '1.4.0' );
define( 'BRKM_URL', plugin_dir_url( __FILE__ ) );
define( 'BRKM_PATH', plugin_dir_path( __FILE__ ) );

/**
 * Danh sách các trường meta của broker.
 */
function brkm_meta_fields() {
	return array(
		'rating'      => array( 'label' => 'Rating (0 - 5)', 'type' => 'number' ),
		'assets'      => array( 'label' => 'Traded Assets (e.g. 1,000+)', 'type' => 'text' ),
		'min_deposit' => array( 'label' => 'Min Deposit (USD)', 'type' => 'number' ),
		'mobile_app'  => array( 'label' => 'Mobile App (e.g. Yes / No)', 'type' => 'text' ),
		'regulators'  => array( 'label' => 'Regulators (comma separated)', 'type' => 'text' ),
		'founded'     => array( 'label' => 'Founded year', 'type' => 'number' ),
		'spread'      => array( 'label' => 'Spread (e.g. From 0.0 pips)', 'type' => 'text' ),
		'leverage'    => array( 'label' => 'Max leverage (e.g. 1:500)', 'type' => 'text' ),
		'platforms'   => array( 'label' => 'Platforms (e.g. MT4, MT5, cTrader)', 'type' => 'text' ),
		'visit_url'   => array( 'label' => 'Visit broker URL (affiliate)', 'type' => 'url' ),
		'pros'        => array( 'label' => 'Pros / highlights (one per line)', 'type' => 'textarea' ),
		'cons'        => array( 'label' => 'Cons (one per line)', 'type' => 'textarea' ),
		'featured'    => array( 'label' => 'Trusted Partner (ribbon)?', 'type' => 'checkbox' ),
	);
}

/**
 * Đăng ký Custom Post Type "broker".
 */
function brkm_register_cpt() {
	$labels = array(
		'name'               => 'Brokers',
		'singular_name'      => 'Broker',
		'add_new'            => 'Add Broker',
		'add_new_item'       => 'Add New Broker',
		'edit_item'          => 'Edit Broker',
		'new_item'           => 'New Broker',
		'view_item'          => 'View Broker',
		'search_items'       => 'Search Brokers',
		'not_found'          => 'No brokers found',
		'menu_name'          => 'Brokers',
	);

	register_post_type( 'broker', array(
		'labels'        => $labels,
		'public'        => true,
		'has_archive'   => true,
		'menu_icon'     => 'dashicons-chart-line',
		'menu_position' => 5,
		'supports'      => array( 'title', 'editor', 'thumbnail', 'excerpt', 'page-attributes' ),
		'rewrite'       => array( 'slug' => 'broker' ),
		'show_in_rest'  => true,
	) );
}
add_action( 'init', 'brkm_register_cpt' );

/**
 * Meta box chi tiết broker.
 */
function brkm_add_meta_box() {
	add_meta_box( 'brkm_details', 'Broker Details', 'brkm_render_meta_box', 'broker', 'normal', 'high' );
}
add_action( 'add_meta_boxes', 'brkm_add_meta_box' );

function brkm_render_meta_box( $post ) {
	wp_nonce_field( 'brkm_save', 'brkm_nonce' );
	echo '<style>.brkm-grid{display:grid;grid-template-columns:1fr 1fr;gap:14px}.brkm-field label{font-weight:600;display:block;margin-bottom:4px}.brkm-field input,.brkm-field textarea{width:100%}.brkm-field textarea{min-height:90px}</style>';
	echo '<div class="brkm-grid">';
	foreach ( brkm_meta_fields() as $key => $f ) {
		$val  = get_post_meta( $post->ID, '_broker_' . $key, true );
		$span = in_array( $f['type'], array( 'textarea' ), true ) ? ' style="grid-column:1 / -1"' : '';
		echo '<div class="brkm-field"' . $span . '>';
		echo '<label for="brkm_' . esc_attr( $key ) . '">' . esc_html( $f['label'] ) . '</label>';
		if ( 'textarea' === $f['type'] ) {
			echo '<textarea id="brkm_' . esc_attr( $key ) . '" name="brkm_' . esc_attr( $key ) . '">' . esc_textarea( $val ) . '</textarea>';
		} elseif ( 'checkbox' === $f['type'] ) {
			echo '<input type="checkbox" id="brkm_' . esc_attr( $key ) . '" name="brkm_' . esc_attr( $key ) . '" value="1" ' . checked( $val, '1', false ) . '>';
		} else {
			$step = 'number' === $f['type'] ? ' step="any"' : '';
			echo '<input type="' . esc_attr( $f['type'] ) . '"' . $step . ' id="brkm_' . esc_attr( $key ) . '" name="brkm_' . esc_attr( $key ) . '" value="' . esc_attr( $val ) . '">';
		}
		echo '</div>';
	}
	echo '</div>';
	echo '<p style="margin-top:12px;color:#666">Broker logo: use the <strong>Featured image</strong> on the right.</p>';
}

function brkm_save_meta( $post_id ) {
	if ( ! isset( $_POST['brkm_nonce'] ) || ! wp_verify_nonce( $_POST['brkm_nonce'], 'brkm_save' ) ) {
		return;
	}
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
		return;
	}
	if ( ! current_user_can( 'edit_post', $post_id ) ) {
		return;
	}
	foreach ( brkm_meta_fields() as $key => $f ) {
		$name = 'brkm_' . $key;
		if ( 'checkbox' === $f['type'] ) {
			update_post_meta( $post_id, '_broker_' . $key, isset( $_POST[ $name ] ) ? '1' : '' );
			continue;
		}
		if ( isset( $_POST[ $name ] ) ) {
			$raw = wp_unslash( $_POST[ $name ] );
			$val = 'textarea' === $f['type'] ? sanitize_textarea_field( $raw ) : ( 'url' === $f['type'] ? esc_url_raw( $raw ) : sanitize_text_field( $raw ) );
			update_post_meta( $post_id, '_broker_' . $key, $val );
		}
	}
}
add_action( 'save_post_broker', 'brkm_save_meta' );

/**
 * Cột bổ sung trong danh sách admin.
 */
function brkm_admin_columns( $cols ) {
	$cols['brkm_rating']   = 'Rating';
	$cols['brkm_featured'] = 'Featured';
	return $cols;
}
add_filter( 'manage_broker_posts_columns', 'brkm_admin_columns' );

function brkm_admin_column_content( $col, $post_id ) {
	if ( 'brkm_rating' === $col ) {
		echo esc_html( get_post_meta( $post_id, '_broker_rating', true ) );
	}
	if ( 'brkm_featured' === $col ) {
		echo get_post_meta( $post_id, '_broker_featured', true ) ? '★' : '—';
	}
}
add_action( 'manage_broker_posts_custom_column', 'brkm_admin_column_content', 10, 2 );

/**
 * Render sao đánh giá.
 */
function brkm_stars( $rating ) {
	$rating = max( 0, min( 5, (float) $rating ) );
	$full   = floor( $rating );
	$half   = ( $rating - $full ) >= 0.5 ? 1 : 0;
	$empty  = 5 - $full - $half;
	$out    = '<span class="brkm-stars" aria-label="' . esc_attr( $rating ) . ' / 5">';
	$out   .= str_repeat( '<span class="s full">★</span>', (int) $full );
	$out   .= $half ? '<span class="s half">★</span>' : '';
	$out   .= str_repeat( '<span class="s empty">★</span>', (int) $empty );
	$out   .= '</span>';
	return $out;
}

/**
 * Lấy danh sách broker.
 */
function brkm_get_brokers( $limit = -1 ) {
	return get_posts( array(
		'post_type'      => 'broker',
		'posts_per_page' => $limit,
		'post_status'    => 'publish',
		'meta_key'       => '_broker_rating',
		'orderby'        => 'meta_value_num',
		'order'          => 'DESC',
	) );
}

/**
 * Shortcode [broker_comparison] — bảng so sánh kiểu Investing.com.
 */
function brkm_shortcode_comparison( $atts ) {
	$atts    = shortcode_atts( array( 'limit' => -1, 'title' => '' ), $atts );
	$brokers = brkm_get_brokers( (int) $atts['limit'] );
	if ( empty( $brokers ) ) {
		return '<p>No brokers yet. Add one under <strong>Brokers → Add Broker</strong>.</p>';
	}

	ob_start();
	?>
	<div class="brkm-wrap">
		<?php if ( $atts['title'] ) : ?><h2 class="brkm-section-title"><?php echo esc_html( $atts['title'] ); ?></h2><?php endif; ?>

		<div class="brkm-table-rows">
			<?php
			$rank = 0;
			foreach ( $brokers as $b ) :
				$rank++;
				$rating   = get_post_meta( $b->ID, '_broker_rating', true );
				$assets   = get_post_meta( $b->ID, '_broker_assets', true );
				$deposit  = get_post_meta( $b->ID, '_broker_min_deposit', true );
				$mobile   = get_post_meta( $b->ID, '_broker_mobile_app', true );
				$visit    = get_post_meta( $b->ID, '_broker_visit_url', true );
				$featured = get_post_meta( $b->ID, '_broker_featured', true );
				$link     = get_permalink( $b );
				$feats    = array_slice( array_filter( array_map( 'trim', explode( "\n", (string) get_post_meta( $b->ID, '_broker_pros', true ) ) ) ), 0, 4 );
				?>
				<div class="brk-row<?php echo $featured ? ' has-partner' : ''; ?>" data-position="<?php echo (int) $rank; ?>">

					<?php if ( $featured ) : ?><span class="brk-ribbon">Trusted Partner</span><?php endif; ?>

					<div class="brk-top">
						<!-- Logo + stars -->
						<div class="brk-col-brand">
							<a href="<?php echo esc_url( $visit ? $visit : $link ); ?>" class="brk-logo"<?php echo $visit ? ' target="_blank" rel="nofollow sponsored noopener"' : ''; ?>>
								<?php if ( has_post_thumbnail( $b ) ) {
									echo get_the_post_thumbnail( $b, 'medium' );
								} else {
									echo '<span class="brk-logo-text">' . esc_html( $b->post_title ) . '</span>';
								} ?>
							</a>
							<div class="brk-stars">
								<?php echo brkm_stars( $rating ); // phpcs:ignore ?>
								<span class="brk-score"><?php echo esc_html( number_format( (float) $rating, 1 ) ); ?></span>
							</div>
						</div>

						<!-- Feature highlights -->
						<div class="brk-col-feats">
							<?php if ( $feats ) : ?>
								<ul class="brk-feats">
									<?php foreach ( $feats as $f ) : ?><li><?php echo esc_html( $f ); ?></li><?php endforeach; ?>
								</ul>
							<?php endif; ?>
						</div>

						<!-- CTA -->
						<div class="brk-col-cta">
							<?php if ( $visit ) : ?>
								<a class="brk-visit" href="<?php echo esc_url( $visit ); ?>" target="_blank" rel="nofollow sponsored noopener">Visit Site</a>
							<?php endif; ?>
							<a class="brk-review" href="<?php echo esc_url( $link ); ?>"><?php echo esc_html( $b->post_title ); ?> Review</a>
							<small class="brk-risk">Your capital is at risk</small>
						</div>
					</div>

					<!-- Specs bar (full-width strip) -->
					<div class="brk-specs-bar">
						<span class="sp"><i class="ic ic-assets"></i><span class="lbl">Traded Assets:</span> <b><?php echo esc_html( $assets ? $assets : '—' ); ?></b></span>
						<span class="sp"><i class="ic ic-deposit"></i><span class="lbl">Min Deposit:</span> <b><?php echo $deposit !== '' ? '$' . esc_html( number_format( (float) $deposit ) ) : '—'; ?></b></span>
						<span class="sp"><i class="ic ic-mobile"></i><span class="lbl">Mobile App:</span> <b><?php echo esc_html( $mobile ? $mobile : '—' ); ?></b></span>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
		<p class="brkm-disclaimer">CFD/Forex trading carries a high risk of capital loss. The data shown is sample data — please verify before investing.</p>
	</div>
	<?php
	return ob_get_clean();
}
add_shortcode( 'broker_comparison', 'brkm_shortcode_comparison' );

/**
 * Shortcode [broker_faq] — phần câu hỏi thường gặp.
 */
function brkm_shortcode_faq() {
	$faqs = apply_filters( 'brkm_faq_items', array(
		array( 'q' => 'What is a Forex broker?', 'a' => 'A Forex broker is an intermediary company that provides a platform for traders to buy and sell currency pairs on the foreign exchange market.' ),
		array( 'q' => 'How do I choose a reputable broker?', 'a' => 'Prioritize brokers regulated by reputable authorities (FCA, ASIC, CySEC), with transparent fees/spreads, fast deposits and withdrawals, and good customer support.' ),
		array( 'q' => 'How important is regulation?', 'a' => 'Licenses from the FCA (UK), ASIC (Australia) or CySEC (Cyprus) ensure a broker complies with rules on client fund segregation and financial transparency.' ),
		array( 'q' => 'How do spread and leverage affect me?', 'a' => 'A low spread reduces trading costs; high leverage increases potential profit but also increases risk proportionally.' ),
		array( 'q' => 'What is the minimum deposit?', 'a' => 'It depends on the broker, ranging from $0 to a few hundred USD. Beginners should choose a broker with a low minimum deposit and a demo account.' ),
	) );

	ob_start();
	?>
	<section class="brkm-faq">
		<h2 class="brkm-section-title">Frequently Asked Questions</h2>
		<div class="brkm-faq-list">
			<?php foreach ( $faqs as $i => $f ) : ?>
				<details class="brkm-faq-item"<?php echo 0 === $i ? ' open' : ''; ?>>
					<summary><?php echo esc_html( $f['q'] ); ?></summary>
					<div class="brkm-faq-a"><?php echo esc_html( $f['a'] ); ?></div>
				</details>
			<?php endforeach; ?>
		</div>
	</section>
	<?php
	return ob_get_clean();
}
add_shortcode( 'broker_faq', 'brkm_shortcode_faq' );

/**
 * Nạp CSS/JS cho phần broker.
 */
function brkm_enqueue() {
	wp_enqueue_style( 'brkm', BRKM_URL . 'assets/broker.css', array(), BRKM_VERSION );
	wp_enqueue_script( 'brkm', BRKM_URL . 'assets/broker.js', array(), BRKM_VERSION, true );
}
add_action( 'wp_enqueue_scripts', 'brkm_enqueue' );

/**
 * Flush rewrite khi kích hoạt plugin.
 */
function brkm_activate() {
	brkm_register_cpt();
	flush_rewrite_rules();
}
register_activation_hook( __FILE__, 'brkm_activate' );
