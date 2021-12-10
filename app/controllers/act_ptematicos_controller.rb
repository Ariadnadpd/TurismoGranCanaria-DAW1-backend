class ActPtematicosController < ApplicationController
  before_action :set_act_ptematico, only: %i[ show edit update destroy ]

  # GET /act_ptematicos or /act_ptematicos.json
  def index
    @act_ptematicos = ActPtematico.all
  end

  # GET /act_ptematicos/1 or /act_ptematicos/1.json
  def show
  end

  # GET /act_ptematicos/new
  def new
    @act_ptematico = ActPtematico.new
  end

  # GET /act_ptematicos/1/edit
  def edit
  end

  # POST /act_ptematicos or /act_ptematicos.json
  def create
    @act_ptematico = ActPtematico.new(act_ptematico_params)

    respond_to do |format|
      if @act_ptematico.save
        format.html { redirect_to @act_ptematico, notice: "La nueva actividad de parques temáticos fue creada correctamente." }
        format.json { render :show, status: :created, location: @act_ptematico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @act_ptematico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_ptematicos/1 or /act_ptematicos/1.json
  def update
    respond_to do |format|
      if @act_ptematico.update(act_ptematico_params)
        format.html { redirect_to @act_ptematico, notice: "La actividad de parques temáticos fue actualizada correctamente" }
        format.json { render :show, status: :ok, location: @act_ptematico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @act_ptematico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_ptematicos/1 or /act_ptematicos/1.json
  def destroy
    @act_ptematico.destroy
    respond_to do |format|
      format.html { redirect_to act_ptematicos_url, notice: "La actividad de parques temáticos fue eliminada correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_ptematico
      @act_ptematico = ActPtematico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def act_ptematico_params
      params.require(:act_ptematico).permit(:titulo, :subtitulo, :localizacion, :telefono, :sitioweb)
    end
end
