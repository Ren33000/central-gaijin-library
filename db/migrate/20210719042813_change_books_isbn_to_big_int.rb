class ChangeBooksIsbnToBigInt < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :ISBN :bigint
  end
end
