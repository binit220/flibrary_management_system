class RemoveMemberIdFromBookIssues < ActiveRecord::Migration[7.1]
  def change
    remove_column :book_issues, :member_id, :string
  end
end
