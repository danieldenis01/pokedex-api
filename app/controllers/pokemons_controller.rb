class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.order(:name)

    render json: @pokemons
  end

  def create
    @pokemon = Pokemon.new pokemon_params

    if @pokemon.save
      render json: @pokemon, status: :created
    else
      render json: { errors: @pokemon.errors }, status: :unprocessable_entity
    end
  end

  private

  def pokemon_params
    params.permit(:name, :description, :image)
  end
end
