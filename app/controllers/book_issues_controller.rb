class BookIssuesController < ApplicationController

  def index
    @book_issues = BookIssue.all         
  end


  def new
    @book_issue = BookIssue.new()
  end

  def create
    @book_issue = BookIssue.create(book_issue_params)
    if @book_issue.save!
      redirect_to book_issues_path
    else
      render new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render 'edit'
    end
  end
  
  private

  def book_issue_params
    params.require(:book_issue).permit(:user_id, :book_id, :issue_date)
  end
end
