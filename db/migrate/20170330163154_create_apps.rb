class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.string :location
      t.string :status
      t.references :user, foreign_key: true
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
