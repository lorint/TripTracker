class FlightsController < ApplicationController
	def index
		@flights = Flight.all
	end

	def new
		@flight = Flight.new
	end

	def create
		flight =
		  Flight.new(
		  	# :flight MUST MATCH the data type of whatever is in the 
		  	# form_for in the new.html.erb
		  	params.require(:flight).permit(:departure_airport,
		  	  :arrival_airport,
		  	  :departure_time,
		  	  :airline,
		  	  :flight_no)
		  )
		if flight.save
			redirect_to flights_path
		else
			redirect_to new_flight_path
		end
	end

	def destroy
		Flight.find(params[:id]).destroy
		redirect_to flights_path
	end
end

