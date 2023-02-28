class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    if @dinosaur.save
      redirect_to dinosaurs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :description, :age)
  end
end
