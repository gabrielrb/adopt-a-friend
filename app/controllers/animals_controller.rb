class AnimalsController < ApplicationController
  before_action :set_animal, only: :show
  def index
    @animals = Animal.all
  end

  def show; end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end
end
