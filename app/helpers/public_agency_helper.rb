module PublicAgencyHelper
	def calculateOutGoing
		total = 0.0;
		self.public_program.all.each do |program|
			total+= program.valueSpending
		end
		return total
	end
end
