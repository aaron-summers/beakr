class AdminsController < ApplicationController
  before_action :find_admin, only: [:show, :edit, :update, :destroy]

  
  def index
    @admins = Admin.all
  end

  def create
    @admin = Admin.create admin_params
    redirect_to admin_path(@admin)
  end

  def new
    @admin = Admin.new
  end

  def edit
  end

  def show
  end

  def update
    @admin.update admin_params
    redirect_to admin_path(@admin)
  end

  def destroy
  end

  private

  def find_admin
    @admin = Admin.find params[:id]
  end

  def admin_params
    params.require(:admin).permit(:name)
  end
end

