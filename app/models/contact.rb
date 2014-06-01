class Contact < ActiveRecord::Base
	belongs_to :company
	has_many :interactions

	validates :company_id, :presence => true
end
