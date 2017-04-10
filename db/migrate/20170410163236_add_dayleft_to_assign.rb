class AddDayleftToAssign < ActiveRecord::Migration[5.0]
  def change
    add_column :assigns, :dayleft, :date
  end
end
