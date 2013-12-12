class Contact < ActiveRecord::Base
	#validations
	#associations
	#call backs
	validates :name, :email, :phone, :address, presence: true
	validates :name, length: { in: 4..9 }
	validates :email, uniqueness: true
end
