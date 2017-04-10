class Assign < ApplicationRecord
  belongs_to :user
  belongs_to :app, inverse_of: :assigns
end
