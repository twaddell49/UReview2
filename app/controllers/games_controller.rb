class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		id = params[:id]
		@game = Game.find(id)
	end

	def new
		#default new template
	end

	def create	
		@game = Game.create!(params[:game])
		flash[:notice] = "#{@game.title} was created."
		redirect_to games_path
	end

	def edit
		@game = Game.find params[:id]
	end

	def update
		@game = Game.find params[:id]
		@game.update_attributes!(params[:game])
		redirect_to games_path(@game)
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
		redirect_to games_path
	end
end