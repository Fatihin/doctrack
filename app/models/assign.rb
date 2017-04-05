class Assign < ApplicationRecord
  belongs_to :app
  belongs_to :user
  belongs_to :form

  accepts_nested_attributes_for :form, reject_if: :all_blank, allow_destroy: true

end
