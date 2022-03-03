class ExperiencesController < ApplicationController
  def index
    @experience = Experience.new
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    @experience.save

    if @experience.save
      redirect_to @experience, notice: 'Experience was successfully created.'
    else
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)

    redirect_to experience_path(@experience)
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to root_path
  end

  private

  def experience_params
    params.require(:experience).permit(
      :user_id,
      :title,
      :location,
      :price,
      :description,
      :week_days,
      :starting_time,
      :duration,
      :photo
    )
  end
end
