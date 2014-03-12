module Spree
	HomeController.class_eval do

		def shipment_status(status)
			#Alternatively, using ActiveRecord's method_missing magic:
			#  Spree::Order.find_by_shipment_state(status)
			@orders = Spree::Order.where(:shipment_state => status)
		end

		def price_between(*range_values)
			min, max = range_values

			if min && max
				@orders = Spree::Order.where('total BETWEEN ? AND ?', min, max)
			elsif min
				@orders = Spree::Order.where('total >= ?', min)
			elsif max
				@orders = Spree::Order.where('total <= ?', max)
			end
		end

	end

end