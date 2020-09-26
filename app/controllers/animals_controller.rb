class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update]

  def index
    @animals = Animal.all
  end

  def show; end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal), notice: 'animal was successfully created'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @animal.update(animal_params)
      redirect_to animal_path(@animal), notice: 'animal was successfully updated'
    else
      render :edit
    end
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :birth_date, :category)
  end
end
