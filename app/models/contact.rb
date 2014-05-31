class Contact < ActiveRecord::Base
	belongs_to :company
	has_many :interactions
end
