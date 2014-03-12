Deface::Override.new(:virtual_path => 'spree/admin/shared/_report_order_criteria',
	:name => "add_price_range_to_admin_orders",
	:insert_after => "#s2id_q_state_eq",
	:text => "
		<div class='field'>
			<label>
				Price Range
				<br>
				<input id='price_range_min' name='q[price_range][]' type='text' placeholder='Min.'>
				to
				<input id='price_range_max' name='q[price_range][]' type='text' placeholder='Max.'>
			</label>
		</div>
	")