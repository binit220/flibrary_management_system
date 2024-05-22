class AddBookNameAndUserNameToBookIssues < ActiveRecord::Migration[7.1]
  def change
    add_column :book_issues, :book_name, :string
    add_column :book_issues, :user_name, :string
  end
end
