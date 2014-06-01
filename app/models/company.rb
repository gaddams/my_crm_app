class Company < ActiveRecord::Base
	belongs_to :user
	has_many :contacts
	has_many :interactions

	validates :user_id, :presence => true
end
