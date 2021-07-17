class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.string :description
      t.integer :ISBN
      t.string :cover_picture

      t.timestamps
    end
  end
end
