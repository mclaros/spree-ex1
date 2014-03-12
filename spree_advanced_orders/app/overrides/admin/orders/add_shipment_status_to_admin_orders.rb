Deface::Override.new(:virtual_path => 'spree/admin/shared/_report_order_criteria',
	:name => "add_shipment_status_to_admin_orders",
	:insert_after => "#s2id_q_state_eq",
	:text => "
		<label>
			Shipment Status
			<br>
			<select class='select2' id='ship_state' name='q[shipment_state]'>
				<option value></option>
				<option value='ready'>Ready</option>
				<option value='pending'>Pending</option>
				<option value='shipped'>Shipped</option>
			</select>
		</label>
	")