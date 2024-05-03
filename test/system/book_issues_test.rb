require "application_system_test_case"

class BookIssuesTest < ApplicationSystemTestCase
  setup do
    @book_issue = book_issues(:one)
  end

  test "visiting the index" do
    visit book_issues_url
    assert_selector "h1", text: "Book issues"
  end

  test "should create book issue" do
    visit book_issues_url
    click_on "New book issue"

    fill_in "Book", with: @book_issue.book_id
    fill_in "Issue date", with: @book_issue.issue_date
    fill_in "User", with: @book_issue.user_id
    click_on "Create Book issue"

    assert_text "Book issue was successfully created"
    click_on "Back"
  end

  test "should update Book issue" do
    visit book_issue_url(@book_issue)
    click_on "Edit this book issue", match: :first

    fill_in "Book", with: @book_issue.book_id
    fill_in "Issue date", with: @book_issue.issue_date
    fill_in "User", with: @book_issue.user_id
    click_on "Update Book issue"

    assert_text "Book issue was successfully updated"
    click_on "Back"
  end

  test "should destroy Book issue" do
    visit book_issue_url(@book_issue)
    click_on "Destroy this book issue", match: :first

    assert_text "Book issue was successfully destroyed"
  end
end
