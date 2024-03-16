class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :genr
      t.string :isbn
      t.boolean :availability

      t.timestamps
    end
  end
end
