class ProfessionsController < ApplicationController
  def index
    @professions = Profession.all
    render json: @professions, status: 200
  end

  def show
    @profession = Profession.find_by(id: params[:id])
    if @profession
      render json: @profession, status: 200
    else
      render json: { error: 'Profession not found.' }
    end
  end

  def create
    @profession = Profession.new(
      name: profession_params[:name],
    )
    if @profession.save
      render json: @profession, status: 200
    else
      render json: { error: 'Error creating Profession.' }
    end
  end

  def update
    @profession = Profession.find_by(params[:id])
    if @profession
      @profession.update(
        name: profession_params[:name],
        )
      render json: @profession
    else
      render json: { error: 'Profession not found.' }
    end
  end

  def destroy
    @professions = Profession.all
    @profession = Profession.find_by(id: params[:id])
    @profession.destroy
    render json: @professions
  end

  private

  def profession_params
    params.require(:profession).permit([:name])
  end
end
