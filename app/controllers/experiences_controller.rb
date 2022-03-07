class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @experience = Experience.new
    @experiences = policy_scope(Experience).order(created_at: :desc)


    if params[:query].present?
      @experiences = Experience.search_by_city(params[:query])
    else
      @experiences = Experience.all
    end

  end

  def show
    @order = Order.new
  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user

    authorize @experience

    if @experience.save
      redirect_to @experience, notice: 'Experience was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @experience.update(experience_params)

    redirect_to experience_path(@experience)
  end

  def destroy
    @experience.destroy
    redirect_to root_path
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
    authorize @experience
  end

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
      :photo,
      :city,
    )
  end
end
