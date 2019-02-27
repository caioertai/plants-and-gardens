class PlantsController < ApplicationController

	def new
		@garden = Garden.find(params[:garden_id])
		@plant = Plant.new
	end

	def create
		@garden = Garden.find(params[:garden_id])
		@plant = Plant.new(plant_params)
		@plant.garden = @garden
		if @plant.save
			redirect_to garden_path(@garden)
		else
			raise
			render :new
		end
	end

	def destroy
		@plant = Plant.find(params[:id])
		@plant.destroy
		redirect_to gardens_path
	end



	private





	def plant_params
		params.require(:plant).permit(:name, :image_url)
	end




end
