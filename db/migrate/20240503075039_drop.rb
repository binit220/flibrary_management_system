class Drop < ActiveRecord::Migration[7.1]
  def change
    drop_table :book_issues
  end
end
