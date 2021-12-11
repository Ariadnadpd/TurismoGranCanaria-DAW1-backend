class GastPostresController < ApplicationController
  before_action :set_gast_postre, only: %i[ show edit update destroy ]

  # GET /gast_postres or /gast_postres.json
  def index
    @gast_postres = GastPostre.all
  end

  # GET /gast_postres/1 or /gast_postres/1.json
  def show
  end

  # GET /gast_postres/new
  def new
    @gast_postre = GastPostre.new
  end

  # GET /gast_postres/1/edit
  def edit
  end

  # POST /gast_postres or /gast_postres.json
  def create
    @gast_postre = GastPostre.new(gast_postre_params)

    respond_to do |format|
      if @gast_postre.save
        format.html { redirect_to @gast_postre, notice: "El nuevo sitio de postres típicos fue creado correctamente." }
        format.json { render :show, status: :created, location: @gast_postre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gast_postre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gast_postres/1 or /gast_postres/1.json
  def update
    respond_to do |format|
      if @gast_postre.update(gast_postre_params)
        format.html { redirect_to @gast_postre, notice: "El sitio de postres típicos fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @gast_postre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gast_postre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gast_postres/1 or /gast_postres/1.json
  def destroy
    @gast_postre.destroy
    respond_to do |format|
      format.html { redirect_to gast_postres_url, notice: "El sitio de postres típicos fue eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gast_postre
      @gast_postre = GastPostre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gast_postre_params
      params.require(:gast_postre).permit(:titulo, :subtitulo, :localizacion, :telefono, :rss_facebook, :rss_instagram, :informacion)
    end
end
