module Spree
	Order.class_eval do

		def self.by_shipment_state(status)
			#Alternatively, using ActiveRecord's method_missing magic:
			#  Spree::Order.find_by_shipment_state(status)
			@orders = Spree::Order.where(:shipment_state => status)
		end

		def self.by_price_range(*range_values)
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