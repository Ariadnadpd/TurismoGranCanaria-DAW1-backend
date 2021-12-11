class GastPlatosController < ApplicationController
  before_action :set_gast_plato, only: %i[ show edit update destroy ]

  # GET /gast_platos or /gast_platos.json
  def index
    @gast_platos = GastPlato.all
  end

  # GET /gast_platos/1 or /gast_platos/1.json
  def show
  end

  # GET /gast_platos/new
  def new
    @gast_plato = GastPlato.new
  end

  # GET /gast_platos/1/edit
  def edit
  end

  # POST /gast_platos or /gast_platos.json
  def create
    @gast_plato = GastPlato.new(gast_plato_params)

    respond_to do |format|
      if @gast_plato.save
        format.html { redirect_to @gast_plato, notice: "El nuevo sitio de platos típicos fue creado correctamente." }
        format.json { render :show, status: :created, location: @gast_plato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gast_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gast_platos/1 or /gast_platos/1.json
  def update
    respond_to do |format|
      if @gast_plato.update(gast_plato_params)
        format.html { redirect_to @gast_plato, notice: "El sitio de platos típicos fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @gast_plato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gast_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gast_platos/1 or /gast_platos/1.json
  def destroy
    @gast_plato.destroy
    respond_to do |format|
      format.html { redirect_to gast_platos_url, notice: "El sitio de platos típicos fue eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gast_plato
      @gast_plato = GastPlato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gast_plato_params
      params.require(:gast_plato).permit(:titulo, :subtitulo, :localizacion, :telefono, :informacion, :rss_facebook)
    end
end
