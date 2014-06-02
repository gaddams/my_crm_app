class Interaction < ActiveRecord::Base
	belongs_to :user
	belongs_to :contact
	belongs_to :company

	validates_uniqueness_of :contact_id, :scope => [:user_id, :date]
end
