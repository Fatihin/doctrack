class Form < ApplicationRecord
	has_many :documents
	has_many :assigns, dependent: :destroy

end
