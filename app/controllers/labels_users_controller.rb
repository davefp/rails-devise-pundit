class LabelsUsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def create
    authorize LabelsUser
    labels_user = LabelsUser.new(secure_params)
    if labels_user
      labels_user.save
      redirect_to users_path, notice: "Label added"
    else
      redirect_to users_path, notice: "Failed to add label"
    end
  end

  private

  def secure_params
    params.require(:labels_user).permit(:user_id, :label_id)
  end

end
