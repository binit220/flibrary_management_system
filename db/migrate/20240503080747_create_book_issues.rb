class CreateBookIssues < ActiveRecord::Migration[7.1]
  def change
    create_table :book_issues do |t|
      t.string :book_id
      t.string :user_id
      t.string :issue_date

      t.timestamps
    end
  end
end
