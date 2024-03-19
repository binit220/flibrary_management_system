class AddItemCountToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :item_count, :string
  end
end
