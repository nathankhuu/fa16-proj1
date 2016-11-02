class PokemonsController < ApplicationController
	def capture
		pokemon_id = params[:id]
		Pokemon.update(pokemon_id, {trainer_id: current_trainer.id})
		redirect_to '/'
	end

	def damage
		pokemon_id = params[:id]
		pokemon = Pokemon.find(pokemon_id)
		if pokemon.health <= 10
			pokemon.destroy
		else 
			Pokemon.update(pokemon_id, {health: pokemon.health - 10})
		end
		r = '/trainers/' + pokemon.trainer_id.to_s
		redirect_to r
	end

	def new
		@pokemon = Pokemon.new
		r = '/trainers/' + current_trainer.id.to_s
	end

	def create
		@pokemon = Pokemon.new
		@pokemon.name = params[:pokemon][:name]
		if @pokemon.valid?
			@pokemon.health = 100
			@pokemon.level = 1
			@pokemon.trainer_id = current_trainer.id
			@pokemon.save
			r = '/trainers/' + current_trainer.id.to_s
			redirect_to r
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to '/pokemons/new'
		end
	end
end
