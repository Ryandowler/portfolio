class ProjectosController < ApplicationController
  before_action :set_projecto, only: [:show, :edit, :update, :destroy]

  # GET /projectos
  # GET /projectos.json
  def index
    @projectos = Projecto.all
    @numProjectos = Projecto.count
  end

  # GET /projectos/1
  # GET /projectos/1.json
  def show
    
  end

  def projects_all
    @projectos = Projecto.all
  end

  # GET /projectos/new
  def new
    @projecto = Projecto.new
  end

  # GET /projectos/1/edit
  def edit
  end

  # POST /projectos
  # POST /projectos.json
  def create
    @projecto = Projecto.new(projecto_params)

    respond_to do |format|
      if @projecto.save
        format.html { redirect_to @projecto, notice: 'Projecto was successfully created.' }
        format.json { render :show, status: :created, location: @projecto }
      else
        format.html { render :new }
        format.json { render json: @projecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectos/1
  # PATCH/PUT /projectos/1.json
  def update
    respond_to do |format|
      if @projecto.update(projecto_params)
        format.html { redirect_to @projecto, notice: 'Projecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @projecto }
      else
        format.html { render :edit }
        format.json { render json: @projecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectos/1
  # DELETE /projectos/1.json
  def destroy
    @projecto.destroy
    respond_to do |format|
      format.html { redirect_to projectos_url, notice: 'Projecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projecto
      @projecto = Projecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projecto_params
      params.require(:projecto).permit(:title, :body, :image, :completed)
    end
end
