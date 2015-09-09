class PublicProgramsController < ApplicationController
  def create
  end

  def show
    @public_agency = PublicAgency.find(params[:public_agency_id])
    @public_program = @public_agency.public_program.find(params[:id])
  end

  def new
  	@public_agency = PublicAgency.find(params[:public_agency_id])
    @public_program = PublicProgram.new
  end

  def list_program
    @public_programs = PublicProgram.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
