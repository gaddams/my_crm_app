class Company < ActiveRecord::Base
	belongs_to :user
	has_many :contacts
	has_many :interactions

	#belongs_to :owner, :source => :user

	validates :name, :presence => true, :uniqueness => {:scope => :contact_id}
end
