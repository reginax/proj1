class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def heal
    @pokemon = @trainer.pokemon
    @pokemon.health += 10
    @pokemon.save
  
    redirect_to root_path
  end
  
end
