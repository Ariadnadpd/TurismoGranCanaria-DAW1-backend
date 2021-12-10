class ArtCanterisController < ApplicationController
  before_action :set_art_canteri, only: %i[ show edit update destroy ]

  # GET /art_canteris or /art_canteris.json
  def index
    @art_canteris = ArtCanteri.all
  end

  # GET /art_canteris/1 or /art_canteris/1.json
  def show
  end

  # GET /art_canteris/new
  def new
    @art_canteri = ArtCanteri.new
  end

  # GET /art_canteris/1/edit
  def edit
  end

  # POST /art_canteris or /art_canteris.json
  def create
    @art_canteri = ArtCanteri.new(art_canteri_params)

    respond_to do |format|
      if @art_canteri.save
        format.html { redirect_to @art_canteri, notice: "El nuevo sitio de Cantería fue creado correctamente." }
        format.json { render :show, status: :created, location: @art_canteri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @art_canteri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_canteris/1 or /art_canteris/1.json
  def update
    respond_to do |format|
      if @art_canteri.update(art_canteri_params)
        format.html { redirect_to @art_canteri, notice: "El sitio de Cantería fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @art_canteri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @art_canteri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_canteris/1 or /art_canteris/1.json
  def destroy
    @art_canteri.destroy
    respond_to do |format|
      format.html { redirect_to art_canteris_url, notice: "El sitio de Cantería fue eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_canteri
      @art_canteri = ArtCanteri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_canteri_params
      params.require(:art_canteri).permit(:titulo, :subtitulo, :localizacion, :telefono, :informacion, :rss_facebook)
    end
end
