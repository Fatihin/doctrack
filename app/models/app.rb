class App < ApplicationRecord
  belongs_to :user
  belongs_to :document
  has_many :assigns, dependent: :destroy

end
