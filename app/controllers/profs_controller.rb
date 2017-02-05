class ProfsController < ApplicationController
  before_action :set_prof, only: [:show, :update, :destroy]

  # GET /profs
  def index
    @profs = Prof.all

    render json: @profs
  end

  # GET /profs/1
  def show
    render json: @prof
  end

  # POST /profs
  def create
    @prof = Prof.new(prof_params)

    if @prof.save
      render json: @prof, status: :created, location: @prof
    else
      render json: @prof.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profs/1
  def update
    if @prof.update(prof_params)
      render json: @prof
    else
      render json: @prof.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profs/1
  def destroy
    @prof.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prof
      @prof = Prof.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prof_params
      params.require(:prof).permit(:name, :dept)
    end
end
