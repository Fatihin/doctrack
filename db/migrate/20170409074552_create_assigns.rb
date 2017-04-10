class CreateAssigns < ActiveRecord::Migration[5.0]
  def change
    create_table :assigns do |t|
      t.references :user, foreign_key: true
      t.references :app, foreign_key: true
      t.date :duedate

      t.timestamps
    end
  end
end
