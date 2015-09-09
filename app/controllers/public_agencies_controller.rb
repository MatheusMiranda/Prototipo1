class PublicAgenciesController < ApplicationController
	
	def index
		@public_agencies = PublicAgency.all
	end
	
	def new
		@public_agency = PublicAgency.new
	end

	def create
		@public_agency = PublicAgency.new(public_agency_params)
		if (@public_agency.save)
			redirect_to @public_agency
		else
			render 'new'
		end
	end
	
	def edit
		@public_agency = PublicAgency.find(params[:id])
	end
	
	def destroy
		@public_agency = PublicAgency.find(params[:id])
		@public_agency.destroy
		redirect_to public_agencies_path
	end

	def update
		@public_agency = PublicAgency.find(params[:id])
		if (@public_agency.update(public_agency_params))
			redirect_to @public_agency
		else
			render 'edit'
		end
	end
	
	def show
		@public_agency = PublicAgency.find(params[:id])
	end
	
	private
		def public_agency_params
			return params.require(:public_agency).permit(:name,:description,:value)
		end
end
