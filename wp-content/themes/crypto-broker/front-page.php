<?php
/**
 * Front page — Forex Brokers (Investing.com style).
 */
get_header();

$count = wp_count_posts( 'broker' );
$total = isset( $count->publish ) ? (int) $count->publish : 0;
$now   = gmdate( 'F Y' );
?>

<section class="introduction">
	<div class="container">
		<h1 class="introduction__title">Best Forex Brokers – <?php echo esc_html( $now ); ?></h1>

		<div class="entry-meta">
			<span class="updated">Updated: <?php echo esc_html( $now ); ?></span>
			<span class="author-box">Written by <b>CryptoWP Team</b></span>
			<span class="author-box">Reviewed by <b>Expert Panel</b></span>
		</div>

		<p class="introduction__description">
			Compare <?php echo esc_html( $total ); ?> top regulated Forex &amp; CFD brokers. The ranking below is based on trustworthiness, trading costs, spreads, leverage, platforms and the deposit/withdrawal experience — helping you choose the broker that fits you best.
		</p>

		<div class="introduction__disclosure">
			<strong>⚠️ Risk Warning:</strong> Leveraged CFD/Forex trading carries a high risk of losing your capital and may not be suitable for all investors. Make sure you fully understand the risks before trading.
		</div>
	</div>
</section>

<div class="content-wrap container">

	<!-- Table of contents -->
	<aside class="toc">
		<div class="toc__title">Table of contents</div>
		<ul>
			<li><a href="#list">Best Forex brokers list</a></li>
			<li><a href="#how">How we rate brokers</a></li>
			<li><a href="#why-reg">Why regulation matters</a></li>
			<li><a href="#brkm-faq">Frequently asked questions</a></li>
		</ul>
	</aside>

	<section class="allocation" id="list">
		<p class="allocation__intro">Here is our list of trusted Forex brokers, hand-picked and ranked by the CryptoWP team:</p>
		<?php echo do_shortcode( '[broker_comparison]' ); ?>
	</section>

	<section class="anchor-section" id="how">
		<h2>How we rate brokers</h2>
		<p>Each broker is scored out of 5 based on: trustworthiness &amp; licensing (FCA, ASIC, CySEC...), trading costs (spreads, commissions), minimum deposit, product range, platform quality (MT4/MT5/cTrader) and customer support.</p>
	</section>

	<section class="anchor-section" id="why-reg">
		<h2>Why regulation matters?</h2>
		<p>Brokers regulated by reputable authorities must keep client funds segregated, report finances transparently and contribute to investor compensation schemes — giving your capital stronger protection. Licenses from the FCA (UK), ASIC (Australia) or CySEC (Cyprus) are among the most trusted indicators.</p>
	</section>

	<section class="anchor-section" id="brkm-faq">
		<?php echo do_shortcode( '[broker_faq]' ); ?>
	</section>

</div>

<?php
get_footer();
