class LabelsController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def index
    @labels = Label.all
    @new_label = Label.new
    authorize Label
  end

  def create
    authorize Label
    label = Label.new(label_params)
    if label.valid?
      label.save
      redirect_to labels_path
    else
      @new_label = label
      @labels = Label.all
      render :index
    end
  end

  def destroy
    label = Label.find(params[:id])
    authorize label
    label.destroy
    redirect_to labels_path, :notice => "Label deleted."
  end

  private

  def label_params
    params.require(:label).permit(:name, :colour)
  end
end
