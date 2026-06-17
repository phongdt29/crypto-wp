<?php
/**
 * Fix Vietnamese spread values to English + rebuild English review content.
 * Run: wp eval-file wp-content/update-spread-en.php
 */
$brokers = get_posts( array( 'post_type' => 'broker', 'posts_per_page' => -1, 'post_status' => 'publish' ) );
$n = 0;
foreach ( $brokers as $b ) {
	$spread = (string) get_post_meta( $b->ID, '_broker_spread', true );
	$spread = str_replace( array( 'Từ', 'từ' ), 'From', $spread );
	update_post_meta( $b->ID, '_broker_spread', $spread );

	$reg       = get_post_meta( $b->ID, '_broker_regulators', true );
	$founded   = get_post_meta( $b->ID, '_broker_founded', true );
	$platforms = get_post_meta( $b->ID, '_broker_platforms', true );
	$leverage  = get_post_meta( $b->ID, '_broker_leverage', true );
	$name      = $b->post_title;

	$content  = "<p><strong>$name</strong> is a licensed Forex/CFD broker regulated by $reg, operating since $founded. ";
	$content .= "The broker offers the $platforms platforms with spreads $spread and maximum leverage of $leverage.</p>";
	$content .= "<p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>";

	wp_update_post( array(
		'ID'           => $b->ID,
		'post_content' => $content,
		'post_excerpt' => "$name review: spread $spread, leverage $leverage, regulated by $reg.",
	) );
	$n++;
}
WP_CLI::success( "Fixed spread + content for $n brokers." );
