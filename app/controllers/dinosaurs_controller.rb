class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dinosaurs = Dinosaur.all
  end

  def show
  end
end
