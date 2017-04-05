class Document < ApplicationRecord
	belongs_to :form
	belongs_to :user
	has_one :app, dependent: :destroy
end
