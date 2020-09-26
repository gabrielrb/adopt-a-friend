class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show
    @adoption = Adoption.new
  end

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

  def destroy
    @animal.destroy
    redirect_to animals_path, notice: 'animal was successfully deleted'
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :birth_date, :category)
  end
end
