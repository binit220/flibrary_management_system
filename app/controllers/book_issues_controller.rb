class BookIssuesController < ApplicationController

  def index
    @book_issues = BookIssue.all         
  end


  def new
    @book_issue = BookIssue.new()
  end

  def create
    @book_issue = BookIssue.create(modify_params)
    if @book_issue.save!
      redirect_to book_issues_path
    else
      render new
    end
  end

  def edit
    @book_issue = BookIssue.find(params[:id])
  end

  def update
    @book_issue = BookIssue.find(params[:id])
    if @book_issue.update(modify_params)
      redirect_to book_issues_path
    else
      render 'edit'
    end
  end

  def modify_params
    user_id = book_issue_params[:user_id]
    book_id = book_issue_params[:book_id]
    user_first_name = User.find(user_id).first_name
    user_last_name = User.find(user_id).last_name
    user_name = user_first_name +" "+ user_last_name
    book_name = Book.find(book_id).name

    modify = {book_name: book_name, user_name: user_name}

    book_issue_params.merge!(modify)
  end
  
  private

  def book_issue_params
    params.require(:book_issue).permit(:user_id, :book_id, :issue_date)
  end
end
