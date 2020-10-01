class AdoptionsController < ApplicationController
  def index
    @adoptions = Adoption.all.order(:created_at).page params[:page]
  end

  def create
    @animal = Animal.friendly.find(params[:animal_id])
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
