class UsersController < ApplicationController
	def index
		@users = User.where(role: "user")
	end

  	def new
		@user = User.new
	end

	def dashboard
    # Additional logic for the dashboard action if needed
  end
	
	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			if @user.role == "admin"
        redirect_to admin_dashboard_path
      else
        redirect_to dashboard_users_path
      end
		else
			render "new"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			if @user.role == "admin"
				redirect_to admin_index_path
			else
				redirect_to users_path
			end
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number, :role, :date_of_birth)
	end

end
