class ChangeRequestsController < ApplicationController
  before_action :find_change_request, only: [:show, :edit, :update, :destroy]

  def index
    @change_requests = ChangeRequest.all
  end

  def create
    @change_request = ChangeRequest.create change_request_params
    redirect_to change_request_path(@change_request)
  end

  def new
    @change_request = ChangeRequest.new
  end

  def edit
  end

  def show
  end

  def update
    @change_request.update change_request_params
    redirect_to change_request_path(@change_request)
  end

  def destroy
  end

  private

  def find_change_request
    @change_request = ChangeRequest.find params[:id]
  end

  def change_request_params
    params.require(:change_request).permit(:name, :article_id, :user_id)
  end
end


