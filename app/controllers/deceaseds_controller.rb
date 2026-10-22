class DeceasedsController < ApplicationController
  def new
    @plot = Plot.find(params[:plot_id])
    @deceased = @plot.deceaseds.build
  end

  def create
    @plot = Plot.find(params[:plot_id])
    @deceased = @plot.deceaseds.build(deceased_params)

    if @deceased.save
      redirect_to plot_path(@plot), notice: "Deceased was successfully created."
    else
      render :new
    end
  end

  private

  def deceased_params
    params.expect(deceased: [ :name, :cpf, :rg, :date_of_birth, :date_of_death ])
  end
end
