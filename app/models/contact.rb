class Contact < ActiveRecord::Base
	belongs_to :company
	has_many :interactions

	validates :name, :presence => true, :uniqueness => {:scope => :company_id}
end
