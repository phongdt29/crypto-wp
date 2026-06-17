<?php
/**
 * Translate broker sample data to English.
 * Run: wp eval-file wp-content/update-brokers-en.php
 */

$data = array(
	'AlphaFX'            => array( 'Yes', array( 'Flexible leverage up to 1:500', '2,000+ CFDs for diverse portfolios', 'Spreads from 0.0 pips, low commission', '24/7 multilingual support' ) ),
	'PrimeTrade Markets' => array( 'Yes', array( 'Regulated by FCA &amp; ASIC', 'Stable MT4/MT5 platforms', 'Fast execution, low slippage', 'Multiple account types' ) ),
	'GlobalPip'          => array( 'Yes', array( 'High leverage up to 1:1000', 'Diverse deposit/withdrawal methods', 'Attractive bonus programs', 'Unlimited demo account' ) ),
	'TradeNova'          => array( 'Yes', array( 'TradingView &amp; cTrader integration', 'Competitive commission fees', 'Advanced analysis tools', '3,000+ tradable instruments' ) ),
	'FXVertex'           => array( 'Yes', array( 'Minimum deposit only $25', 'Unlimited demo account', 'Intuitive mobile app', 'Open an account in 5 minutes' ) ),
	'CoreMarkets'        => array( 'Yes', array( 'Capital safety, segregated accounts', 'Regulated by FCA &amp; DFSA', 'Comprehensive education materials', 'Institutional liquidity' ) ),
	'ZenithFX'           => array( 'Yes', array( 'Ultra-low minimum deposit $10', 'Flexible leverage up to 1:888', 'Instant account opening', 'Frequent promotions' ) ),
	'BluePeak Brokers'   => array( 'Yes', array( 'Long-established, trusted brand', 'Stable liquidity &amp; spreads', 'Suited for institutional investors', 'Dedicated account manager' ) ),
	'OceanTrade'         => array( 'Yes', array( 'Modern, easy-to-use interface', 'Crypto CFD support', 'Fast same-day deposits/withdrawals', 'Active trading community' ) ),
	'VelocityFX'         => array( 'No', array( 'Very high leverage up to 1:1000', 'Low minimum deposit $20', 'Deposit promotions', 'Competitive spreads' ) ),
);

// Meta cho phần văn bản (regulators, founded...) đọc lại để dựng content.
$updated = 0;
foreach ( $data as $name => $row ) {
	$post = get_page_by_title( $name, OBJECT, 'broker' );
	if ( ! $post ) { continue; }
	list( $mobile, $feats ) = $row;

	$reg      = get_post_meta( $post->ID, '_broker_regulators', true );
	$founded  = get_post_meta( $post->ID, '_broker_founded', true );
	$platforms= get_post_meta( $post->ID, '_broker_platforms', true );
	$spread   = get_post_meta( $post->ID, '_broker_spread', true );
	$leverage = get_post_meta( $post->ID, '_broker_leverage', true );

	update_post_meta( $post->ID, '_broker_mobile_app', $mobile );
	update_post_meta( $post->ID, '_broker_pros', implode( "\n", $feats ) );

	$content  = "<p><strong>$name</strong> is a licensed Forex/CFD broker regulated by $reg, operating since $founded. ";
	$content .= "The broker offers the $platforms platforms with spreads $spread and maximum leverage of $leverage.</p>";
	$content .= "<p>This is sample review content. You can edit all information from the admin area under <em>Brokers</em>.</p>";

	wp_update_post( array(
		'ID'           => $post->ID,
		'post_content' => $content,
		'post_excerpt' => "$name review: spread $spread, leverage $leverage, regulated by $reg.",
	) );
	$updated++;
}

WP_CLI::success( "Translated $updated brokers to English." );
