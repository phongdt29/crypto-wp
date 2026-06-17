<?php
/**
 * Footer — Investing.com style (risk disclosure block).
 */
?>
</main>

<footer class="site-footer">
	<div class="container">

		<div class="footer__top">
			<a class="footer__logo" href="<?php echo esc_url( home_url( '/' ) ); ?>">
				<?php if ( has_custom_logo() ) { the_custom_logo(); } else { echo 'Crypto<span>WP</span>'; } ?>
			</a>
			<div class="footer__social">
				<a href="#" aria-label="Facebook" rel="nofollow"><svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor"><path d="M22 12.06C22 6.5 17.52 2 12 2S2 6.5 2 12.06c0 5 3.66 9.15 8.44 9.94v-7.03H7.9v-2.9h2.54V9.85c0-2.51 1.49-3.9 3.78-3.9 1.09 0 2.24.2 2.24.2v2.46h-1.26c-1.24 0-1.63.77-1.63 1.56v1.88h2.78l-.44 2.9h-2.34V22c4.78-.79 8.43-4.94 8.43-9.94Z"/></svg></a>
				<a href="#" aria-label="Twitter" rel="nofollow"><svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor"><path d="M18.9 2H22l-7.5 8.57L23.3 22h-6.9l-5.4-7.06L4.8 22H1.7l8.03-9.17L.9 2h7.06l4.88 6.45L18.9 2Zm-1.2 18h1.9L6.4 3.9H4.36L17.7 20Z"/></svg></a>
			</div>
		</div>

		<div class="footer__disclaimer">
			<p><strong>Risk Disclosure:</strong> Trading in financial instruments and/or cryptocurrencies involves high risks including the risk of losing some, or all, of your investment amount, and may not be suitable for all investors. Prices of cryptocurrencies are extremely volatile and may be affected by external factors such as financial, regulatory or political events. Trading on margin increases the financial risks.</p>

			<p>Before deciding to trade in financial instrument or cryptocurrencies you should be fully informed of the risks and costs associated with trading the financial markets, carefully consider your investment objectives, level of experience, and risk appetite, and seek professional advice where needed.</p>

			<p>CryptoWP would like to remind you that the data contained in this website is not necessarily real-time nor accurate. The data and prices on the website are not necessarily provided by any market or exchange, but may be provided by market makers, and so prices may not be accurate and may differ from the actual price at any given market, meaning prices are indicative and not appropriate for trading purposes. CryptoWP and any provider of the data contained in this website will not accept liability for any loss or damage as a result of your trading, or your reliance on the information contained within this website.</p>

			<p>It is prohibited to use, store, reproduce, display, modify, transmit or distribute the data contained in this website without the explicit prior written permission of CryptoWP and/or the data provider. All intellectual property rights are reserved by the providers and/or the exchange providing the data contained in this website.</p>

			<p>CryptoWP may be compensated by the advertisers that appear on the website, based on your interaction with the advertisements or advertisers. Services on this page might not be offered by the listed partners; please check with the provider.</p>

			<p>Please be informed that Proprietary Trading is not fully regulated, the user will bear full responsibility of losses or gains achieved.</p>
		</div>

		<hr class="footer__sep">

		<div class="footer__bottom">
			<span class="footer__copyright">&copy; 2007-<?php echo esc_html( gmdate( 'Y' ) ); ?> CryptoWP. All Rights Reserved</span>
			<nav class="footer__links">
				<a href="#">Terms And Conditions</a>
				<a href="#">Privacy Policy</a>
				<a href="#">Risk Warning</a>
			</nav>
		</div>

	</div>
</footer>

<?php wp_footer(); ?>
</body>
</html>
