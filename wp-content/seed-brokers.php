<?php
/**
 * Seed dữ liệu broker mẫu. Chạy: wp eval-file wp-content/seed-brokers.php
 * Idempotent: bỏ qua broker đã tồn tại theo tiêu đề.
 */

$brokers = array(
	array( 'AlphaFX', 4.8, 0, 'FCA, ASIC, CySEC', 2007, 'Từ 0.0 pips', '1:500', 'MT4, MT5, cTrader', 1, 'Spread cực thấp|Nạp tối thiểu 0$|Khớp lệnh nhanh|Hỗ trợ 24/7', 'Phí qua đêm cao|Ít sản phẩm crypto' ),
	array( 'PrimeTrade Markets', 4.7, 100, 'FCA, ASIC', 2010, 'Từ 0.1 pips', '1:400', 'MT4, MT5', 1, 'Uy tín lâu năm|Nền tảng ổn định|Nhiều tài khoản', 'Nạp tối thiểu hơi cao|Giao diện hơi cũ' ),
	array( 'GlobalPip', 4.6, 50, 'CySEC, FSCA', 2012, 'Từ 0.2 pips', '1:1000', 'MT4, MT5, WebTrader', 0, 'Đòn bẩy cao|Nạp rút đa dạng|Bonus hấp dẫn', 'Đòn bẩy cao gây rủi ro|Spread tài khoản chuẩn cao' ),
	array( 'TradeNova', 4.5, 200, 'FCA, ASIC, CySEC', 2009, 'Từ 0.0 pips', '1:300', 'MT5, cTrader, TradingView', 1, 'Tích hợp TradingView|Phí hoa hồng thấp|Công cụ phân tích tốt', 'Nạp tối thiểu cao|Không hỗ trợ MT4' ),
	array( 'FXVertex', 4.4, 25, 'CySEC', 2015, 'Từ 0.3 pips', '1:500', 'MT4, MT5', 0, 'Nạp tối thiểu thấp|Tài khoản demo không giới hạn|App di động tốt', 'Chỉ 1 cơ quan quản lý|Ít cặp tiền exotic' ),
	array( 'CoreMarkets', 4.3, 100, 'FCA, DFSA', 2008, 'Từ 0.1 pips', '1:200', 'MT4, MT5, cTrader', 0, 'An toàn cao|Tách bạch tiền khách hàng|Đào tạo bài bản', 'Đòn bẩy thấp|Phí rút tiền' ),
	array( 'ZenithFX', 4.2, 10, 'ASIC, FSCA', 2014, 'Từ 0.4 pips', '1:888', 'MT4, MT5, WebTrader', 0, 'Nạp tối thiểu rất thấp|Đòn bẩy linh hoạt|Mở tài khoản nhanh', 'Spread biến động mạnh|Hỗ trợ tiếng Việt hạn chế' ),
	array( 'BluePeak Brokers', 4.1, 250, 'FCA, ASIC', 2006, 'Từ 0.2 pips', '1:100', 'MT4, MT5', 0, 'Thương hiệu lâu đời|Thanh khoản tốt|Phù hợp tổ chức', 'Nạp tối thiểu cao|Đòn bẩy thấp cho lẻ' ),
	array( 'OceanTrade', 4.0, 50, 'CySEC, FSC', 2016, 'Từ 0.5 pips', '1:500', 'MT5, WebTrader', 0, 'Giao diện hiện đại|Hỗ trợ crypto CFD|Nạp rút nhanh', 'Còn non trẻ|Spread chưa tối ưu' ),
	array( 'VelocityFX', 3.9, 20, 'FSCA', 2017, 'Từ 0.6 pips', '1:1000', 'MT4, MT5', 0, 'Đòn bẩy rất cao|Nạp tối thiểu thấp|Khuyến mãi thường xuyên', 'Quản lý yếu hơn|Rủi ro đòn bẩy cao' ),
);

$created = 0; $skipped = 0;
foreach ( $brokers as $b ) {
	list( $name, $rating, $deposit, $reg, $founded, $spread, $leverage, $platforms, $featured, $pros, $cons ) = $b;

	$existing = get_page_by_title( $name, OBJECT, 'broker' );
	if ( $existing ) { $skipped++; continue; }

	$content  = "<p><strong>$name</strong> là một broker Forex/CFD được cấp phép bởi $reg, hoạt động từ năm $founded. ";
	$content .= "Broker cung cấp các nền tảng $platforms với spread $spread và đòn bẩy tối đa $leverage.</p>";
	$content .= "<p>Đây là nội dung đánh giá mẫu. Bạn có thể chỉnh sửa toàn bộ thông tin trong trang quản trị tại mục <em>Brokers</em>.</p>";

	$post_id = wp_insert_post( array(
		'post_type'    => 'broker',
		'post_status'  => 'publish',
		'post_title'   => $name,
		'post_content' => $content,
		'post_excerpt' => "Đánh giá $name: spread $spread, đòn bẩy $leverage, quản lý bởi $reg.",
	) );

	if ( is_wp_error( $post_id ) || ! $post_id ) { continue; }

	update_post_meta( $post_id, '_broker_rating', $rating );
	update_post_meta( $post_id, '_broker_min_deposit', $deposit );
	update_post_meta( $post_id, '_broker_regulators', $reg );
	update_post_meta( $post_id, '_broker_founded', $founded );
	update_post_meta( $post_id, '_broker_spread', $spread );
	update_post_meta( $post_id, '_broker_leverage', $leverage );
	update_post_meta( $post_id, '_broker_platforms', $platforms );
	update_post_meta( $post_id, '_broker_visit_url', 'https://example.com/go/' . sanitize_title( $name ) );
	update_post_meta( $post_id, '_broker_pros', str_replace( '|', "\n", $pros ) );
	update_post_meta( $post_id, '_broker_cons', str_replace( '|', "\n", $cons ) );
	update_post_meta( $post_id, '_broker_featured', $featured ? '1' : '' );
	$created++;
}

WP_CLI::success( "Đã tạo $created broker, bỏ qua $skipped (đã tồn tại)." );
