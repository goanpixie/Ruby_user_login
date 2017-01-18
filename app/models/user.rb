class User < ActiveRecord::Base
	
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email_address, :age, presence: true
	validates_numericality_of :age, :greater_than_or_equal_to => 10, :less_than =>150
	
end
