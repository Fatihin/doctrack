class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :doctype
      t.string :title
      t.string :attachment
      t.string :desc
      t.string :serialno
      t.timestamps
    end
  end
end
