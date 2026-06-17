<?php
/**
 * Backfill assets/mobile_app + điểm nổi bật kiểu Investing.com cho broker đã có.
 * Chạy: wp eval-file wp-content/update-brokers.php
 */

$data = array(
	'AlphaFX'             => array( '2,000+', 'Có', array( 'Đòn bẩy linh hoạt tới 1:500', 'Hơn 2,000 CFD đa dạng danh mục', 'Spread từ 0.0 pips, hoa hồng thấp', 'Hỗ trợ 24/7 đa ngôn ngữ' ) ),
	'PrimeTrade Markets'  => array( '1,500+', 'Có', array( 'Được FCA &amp; ASIC cấp phép', 'Nền tảng MT4/MT5 ổn định', 'Thực thi lệnh nhanh, trượt giá thấp', 'Nhiều loại tài khoản phù hợp' ) ),
	'GlobalPip'           => array( '1,200+', 'Có', array( 'Đòn bẩy cao tới 1:1000', 'Nạp/rút đa dạng phương thức', 'Chương trình bonus hấp dẫn', 'Tài khoản demo không giới hạn' ) ),
	'TradeNova'           => array( '3,000+', 'Có', array( 'Tích hợp TradingView &amp; cTrader', 'Phí hoa hồng cạnh tranh', 'Công cụ phân tích chuyên sâu', 'Hơn 3,000 sản phẩm giao dịch' ) ),
	'FXVertex'            => array( '800+', 'Có', array( 'Nạp tối thiểu chỉ $25', 'Tài khoản demo không giới hạn', 'App di động trực quan', 'Mở tài khoản trong 5 phút' ) ),
	'CoreMarkets'         => array( '1,000+', 'Có', array( 'An toàn vốn, tách bạch tài khoản', 'Được FCA &amp; DFSA quản lý', 'Tài liệu đào tạo bài bản', 'Thanh khoản tổ chức' ) ),
	'ZenithFX'            => array( '600+', 'Có', array( 'Nạp tối thiểu siêu thấp $10', 'Đòn bẩy linh hoạt tới 1:888', 'Mở tài khoản tức thì', 'Khuyến mãi thường xuyên' ) ),
	'BluePeak Brokers'    => array( '1,800+', 'Có', array( 'Thương hiệu uy tín lâu năm', 'Thanh khoản &amp; spread ổn định', 'Phù hợp nhà đầu tư tổ chức', 'Hỗ trợ chuyên viên riêng' ) ),
	'OceanTrade'          => array( '900+', 'Có', array( 'Giao diện hiện đại, dễ dùng', 'Hỗ trợ CFD tiền điện tử', 'Nạp/rút nhanh trong ngày', 'Cộng đồng giao dịch sôi động' ) ),
	'VelocityFX'          => array( '700+', 'Không', array( 'Đòn bẩy rất cao tới 1:1000', 'Nạp tối thiểu thấp $20', 'Khuyến mãi nạp tiền', 'Spread cạnh tranh' ) ),
);

$updated = 0;
foreach ( $data as $name => $row ) {
	$post = get_page_by_title( $name, OBJECT, 'broker' );
	if ( ! $post ) { continue; }
	list( $assets, $mobile, $feats ) = $row;
	update_post_meta( $post->ID, '_broker_assets', $assets );
	update_post_meta( $post->ID, '_broker_mobile_app', $mobile );
	update_post_meta( $post->ID, '_broker_pros', implode( "\n", $feats ) );
	$updated++;
}

WP_CLI::success( "Đã cập nhật $updated broker." );
