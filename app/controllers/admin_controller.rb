class AdminController < ApplicationController

  def index
    @admins = User.where(role: "admin")
  end

  def dashboard
  end
end
