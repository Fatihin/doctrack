class Document < ApplicationRecord
	belongs_to :form
	belongs_to :user
	has_one :app, dependent: :destroy
	validates :serialno, presence: true, uniqueness: true

end
