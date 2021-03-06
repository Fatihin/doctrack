class CreateAssigns < ActiveRecord::Migration[5.0]
  def change
    create_table :assigns do |t|
      t.belongs_to :app, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
