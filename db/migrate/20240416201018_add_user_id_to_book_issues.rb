class AddUserIdToBookIssues < ActiveRecord::Migration[7.1]
  def change
    add_column :book_issues, :user_id, :string
  end
end
