class PublicAgency < ActiveRecord::Base
	has_many :public_program, dependent: :destroy
	
end
