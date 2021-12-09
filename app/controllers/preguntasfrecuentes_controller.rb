class PreguntasfrecuentesController < ApplicationController
  before_action :set_preguntasfrecuente, only: %i[ show edit update destroy ]

  # GET /preguntasfrecuentes or /preguntasfrecuentes.json
  def index
    @preguntasfrecuentes = Preguntasfrecuente.all
  end

  # GET /preguntasfrecuentes/1 or /preguntasfrecuentes/1.json
  def show
  end

  # GET /preguntasfrecuentes/new
  def new
    @preguntasfrecuente = Preguntasfrecuente.new
  end

  # GET /preguntasfrecuentes/1/edit
  def edit
  end

  # POST /preguntasfrecuentes or /preguntasfrecuentes.json
  def create
    @preguntasfrecuente = Preguntasfrecuente.new(preguntasfrecuente_params)

    respond_to do |format|
      if @preguntasfrecuente.save
        format.html { redirect_to @preguntasfrecuente, notice: "Preguntasfrecuente was successfully created." }
        format.json { render :show, status: :created, location: @preguntasfrecuente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @preguntasfrecuente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preguntasfrecuentes/1 or /preguntasfrecuentes/1.json
  def update
    respond_to do |format|
      if @preguntasfrecuente.update(preguntasfrecuente_params)
        format.html { redirect_to @preguntasfrecuente, notice: "Preguntasfrecuente was successfully updated." }
        format.json { render :show, status: :ok, location: @preguntasfrecuente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @preguntasfrecuente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preguntasfrecuentes/1 or /preguntasfrecuentes/1.json
  def destroy
    @preguntasfrecuente.destroy
    respond_to do |format|
      format.html { redirect_to preguntasfrecuentes_url, notice: "Preguntasfrecuente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preguntasfrecuente
      @preguntasfrecuente = Preguntasfrecuente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def preguntasfrecuente_params
      params.require(:preguntasfrecuente).permit(:pregunta, :respuesta)
    end
end
