class ArtCuchillerisController < ApplicationController
  before_action :set_art_cuchilleri, only: %i[ show edit update destroy ]

  # GET /art_cuchilleris or /art_cuchilleris.json
  def index
    @art_cuchilleris = ArtCuchilleri.all
  end

  # GET /art_cuchilleris/1 or /art_cuchilleris/1.json
  def show
  end

  # GET /art_cuchilleris/new
  def new
    @art_cuchilleri = ArtCuchilleri.new
  end

  # GET /art_cuchilleris/1/edit
  def edit
  end

  # POST /art_cuchilleris or /art_cuchilleris.json
  def create
    @art_cuchilleri = ArtCuchilleri.new(art_cuchilleri_params)

    respond_to do |format|
      if @art_cuchilleri.save
        format.html { redirect_to @art_cuchilleri, notice: "El nuevo sitio de Cuchillos canarios fue creado correctamente." }
        format.json { render :show, status: :created, location: @art_cuchilleri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @art_cuchilleri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_cuchilleris/1 or /art_cuchilleris/1.json
  def update
    respond_to do |format|
      if @art_cuchilleri.update(art_cuchilleri_params)
        format.html { redirect_to @art_cuchilleri, notice: "El sitio de Cuchillos canarios fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @art_cuchilleri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @art_cuchilleri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_cuchilleris/1 or /art_cuchilleris/1.json
  def destroy
    @art_cuchilleri.destroy
    respond_to do |format|
      format.html { redirect_to art_cuchilleris_url, notice: "El sitio de Cuchillos canarios fue eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_cuchilleri
      @art_cuchilleri = ArtCuchilleri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_cuchilleri_params
      params.require(:art_cuchilleri).permit(:titulo, :subtitulo, :localizacion, :telefono, :informacion, :rss_facebook)
    end
end
