class ExperiencesController < ApplicationController
  def index

  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to experience_path(@experience)
  end
end
