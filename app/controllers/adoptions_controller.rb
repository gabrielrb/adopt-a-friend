class AdoptionsController < ApplicationController
  def create
    @animal = Animal.find(params[:animal_id])
    @adoption = Adoption.new(adoption_params)
    @adoption.animal = @animal

    if @adoption.save
      redirect_to animal_path(@animal)
    else
      render 'animals/show'
    end
  end

  private

  def adoption_params
    params.require(:adoption).permit(:owner_name, :animal_id)
  end
end