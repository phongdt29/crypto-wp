<?php
/**
 * Front page — Forex Brokers (Investing.com style).
 */
get_header();

$count = wp_count_posts( 'broker' );
$total = isset( $count->publish ) ? (int) $count->publish : 0;
$now   = gmdate( 'F Y' );
$picks = function_exists( 'brkm_get_brokers' ) ? brkm_get_brokers( 5 ) : array();
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
			<li><a href="#picks">Our Top Picks for Best Forex Broker</a></li>
			<?php foreach ( $picks as $b ) : ?>
				<li><a href="#pick-<?php echo esc_attr( $b->post_name ); ?>"><?php echo esc_html( $b->post_title ); ?></a></li>
			<?php endforeach; ?>
			<li><a href="#picking">Picking a Forex Broker: What You Need to Know</a></li>
			<li><a href="#risk">Risk of Forex Trading</a></li>
			<li><a href="#what">What Does a Forex Broker Do?</a></li>
			<li><a href="#need">Do I Need a Forex Broker?</a></li>
			<li><a href="#why-reg">How Can I Tell if a Forex Broker Is Regulated?</a></li>
			<li><a href="#how">How We Rate Brokers</a></li>
			<li><a href="#brkm-faq">Frequently Asked Questions</a></li>
		</ul>
	</aside>

	<div class="content-main">

	<section class="allocation" id="list">
		<p class="allocation__intro">Here is our list of trusted Forex brokers that we tested, hand-picked and ranked by the CryptoWP team:</p>
		<?php echo do_shortcode( '[broker_comparison]' ); ?>
	</section>

	<?php if ( $picks ) : ?>
	<section class="top-picks" id="picks">
		<div class="picks-main">
			<h2>Our Top Picks for Best Forex Broker</h2>
			<?php foreach ( $picks as $b ) :
				$bvisit = get_post_meta( $b->ID, '_broker_visit_url', true );
				$blink  = get_permalink( $b );
				?>
				<article class="pick" id="pick-<?php echo esc_attr( $b->post_name ); ?>">
					<h3><?php echo esc_html( $b->post_title ); ?></h3>
					<h4>Why Did We Pick It?</h4>
					<p><a href="<?php echo esc_url( $blink ); ?>"><?php echo esc_html( $b->post_title ); ?></a> <?php echo esc_html( wp_strip_all_tags( $b->post_content ) ); ?></p>
				</article>
			<?php endforeach; ?>
		</div>

		<aside class="recommendation-box">
			<h3 class="rec-title">Our recommended brokers:</h3>
			<?php foreach ( $picks as $b ) :
				$bvisit = get_post_meta( $b->ID, '_broker_visit_url', true );
				$blink  = $bvisit ? $bvisit : get_permalink( $b );
				?>
				<a class="rec-item" href="<?php echo esc_url( $blink ); ?>"<?php echo $bvisit ? ' target="_blank" rel="nofollow sponsored noopener"' : ''; ?>>
					<span class="rec-logo">
						<?php if ( has_post_thumbnail( $b ) ) { echo get_the_post_thumbnail( $b, 'thumbnail' ); } else { echo '<b>' . esc_html( mb_substr( $b->post_title, 0, 2 ) ) . '</b>'; } ?>
					</span>
					<span class="rec-name"><?php echo esc_html( $b->post_title ); ?></span>
					<span class="rec-go" aria-hidden="true">›</span>
				</a>
			<?php endforeach; ?>
			<a class="rec-all" href="<?php echo esc_url( get_post_type_archive_link( 'broker' ) ); ?>">See all brokers</a>
		</aside>
	</section>
	<?php endif; ?>

	<section class="anchor-section" id="how">
		<h2>How We Rate Brokers</h2>
		<p>Each broker is scored out of 5 based on: trustworthiness &amp; licensing (FCA, ASIC, CySEC...), trading costs (spreads, commissions), minimum deposit, product range, platform quality (MT4/MT5/cTrader) and customer support.</p>
	</section>

	<section class="anchor-section" id="what">
		<h2>What Does a Forex Broker Do?</h2>
		<p>A Forex broker connects retail traders to the foreign exchange market, providing the trading platform, price quotes and leverage needed to buy and sell currency pairs. Brokers earn through spreads and/or commissions and handle order execution, deposits and withdrawals.</p>
	</section>

	<section class="anchor-section" id="need">
		<h2>Do I Need a Forex Broker?</h2>
		<p>Yes. Individual traders cannot access the interbank Forex market directly. A regulated broker is the gateway that lets you trade currencies online, manage positions and use risk-management tools such as stop-loss and take-profit orders.</p>
	</section>

	<section class="anchor-section" id="picking">
		<h2>Picking a Forex Broker: What You Need to Know</h2>
		<p>Focus on regulation, total trading costs, available platforms, deposit/withdrawal speed and the quality of customer support. Prefer brokers with a demo account, transparent fees and segregated client funds. Match the leverage and instruments to your strategy and experience level.</p>
	</section>

	<section class="anchor-section" id="risk">
		<h2>Risk of Forex Trading</h2>
		<p>Forex and CFD trading with leverage can amplify both gains and losses, and you may lose more than your initial deposit. Only trade with money you can afford to lose, use risk-management tools and never invest based on hype or unverified data.</p>
	</section>

	<section class="anchor-section" id="why-reg">
		<h2>How Can I Tell if a Forex Broker Is Regulated?</h2>
		<p>Check the broker's website footer for a license number and regulator, then verify it on the regulator's official register (e.g. FCA, ASIC, CySEC). Regulated brokers must keep client funds segregated, report finances transparently and contribute to investor compensation schemes — giving your capital stronger protection.</p>
	</section>

	<section class="anchor-section" id="brkm-faq">
		<?php echo do_shortcode( '[broker_faq]' ); ?>
	</section>

	</div><!-- /.content-main -->

</div>

<?php
get_footer();
