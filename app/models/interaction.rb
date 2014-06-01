class Interaction < ActiveRecord::Base
	belongs_to :user
	belongs_to :contact
	belongs_to :company
end
