class AddMobileNoToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :mobile_no, :string
  end
end
