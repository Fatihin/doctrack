class App < ApplicationRecord
  belongs_to :user
  belongs_to :document

  has_many :assigns, inverse_of: :app
  has_many :users, through: :assings

  accepts_nested_attributes_for :assigns,  
  reject_if: proc { |attributes| attributes.all? {|k,v| v.blank?} }

end
