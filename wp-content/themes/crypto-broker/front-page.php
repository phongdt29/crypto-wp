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

		<div class="updated">Updated : <?php echo esc_html( strtoupper( $now ) ); ?></div>

		<div class="author-boxes">
			<?php
			$authors = array(
				array( 'role' => 'Written By', 'name' => 'Alex Carter', 'init' => 'AC', 'c' => '#2a7ade',
					'icon' => '<path d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04a1 1 0 0 0 0-1.41l-2.34-2.34a1 1 0 0 0-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z"/>' ),
				array( 'role' => 'Reviewed By', 'name' => 'Minh Nguyen', 'init' => 'MN', 'c' => '#15a86b',
					'icon' => '<path d="M15.5 14h-.79l-.28-.27a6.5 6.5 0 1 0-.7.7l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0A4.5 4.5 0 1 1 14 9.5 4.49 4.49 0 0 1 9.5 14z"/>' ),
				array( 'role' => 'Fact Checked By', 'name' => 'Sophia Lee', 'init' => 'SL', 'c' => '#e0762a',
					'icon' => '<path d="M12 2 4 5v6c0 5 3.4 9.7 8 11 4.6-1.3 8-6 8-11V5l-8-3zm-1.2 13.4-3.2-3.2 1.4-1.4 1.8 1.8 4.2-4.2 1.4 1.4-5.6 5.6z"/>' ),
			);
			foreach ( $authors as $a ) : ?>
				<div class="author-box">
					<span class="ab-avatar" style="background:<?php echo esc_attr( $a['c'] ); ?>"><?php echo esc_html( $a['init'] ); ?></span>
					<span class="ab-info">
						<span class="ab-role"><svg viewBox="0 0 24 24" width="13" height="13" fill="currentColor"><?php echo $a['icon']; // phpcs:ignore ?></svg><?php echo esc_html( $a['role'] ); ?></span>
						<span class="ab-name"><?php echo esc_html( $a['name'] ); ?></span>
					</span>
				</div>
			<?php endforeach; ?>
		</div>

		<p class="introduction__description">
			Trading Forex starts with picking the right broker. We've done the hard work for you, comparing <?php echo esc_html( $total ); ?> top brokers for reliability, speed and fees. Browse our carefully-crafted reviews to find the best Forex broker for your needs.
		</p>

		<details class="risk-note">
			<summary>Risk Warning <span class="ri-icon">i</span></summary>
			<p>Leveraged CFD/Forex trading carries a high risk of losing your capital and may not be suitable for all investors. Make sure you fully understand the risks before trading.</p>
		</details>
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
