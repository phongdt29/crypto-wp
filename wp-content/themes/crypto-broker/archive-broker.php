<?php
/**
 * Archive broker — danh sách Forex Brokers (dạng bảng so sánh).
 */
get_header();
?>

<section class="introduction">
	<div class="container">
		<h1 class="introduction__title">All Forex Brokers</h1>
		<p class="introduction__description">A complete comparison of Forex brokers reviewed and ranked by the CryptoWP team based on trustworthiness, costs and trading experience.</p>
	</div>
</section>

<div class="content-wrap container" style="grid-template-columns:1fr">
	<section>
		<?php echo do_shortcode( '[broker_comparison]' ); ?>
	</section>
</div>

<?php
get_footer();
