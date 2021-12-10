class ArtAlfarerisController < ApplicationController
  before_action :set_art_alfareri, only: %i[ show edit update destroy ]

  # GET /art_alfareris or /art_alfareris.json
  def index
    @art_alfareris = ArtAlfareri.all
  end

  # GET /art_alfareris/1 or /art_alfareris/1.json
  def show
  end

  # GET /art_alfareris/new
  def new
    @art_alfareri = ArtAlfareri.new
  end

  # GET /art_alfareris/1/edit
  def edit
  end

  # POST /art_alfareris or /art_alfareris.json
  def create
    @art_alfareri = ArtAlfareri.new(art_alfareri_params)

    respond_to do |format|
      if @art_alfareri.save
        format.html { redirect_to @art_alfareri, notice: "Art alfareri was successfully created." }
        format.json { render :show, status: :created, location: @art_alfareri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @art_alfareri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_alfareris/1 or /art_alfareris/1.json
  def update
    respond_to do |format|
      if @art_alfareri.update(art_alfareri_params)
        format.html { redirect_to @art_alfareri, notice: "Art alfareri was successfully updated." }
        format.json { render :show, status: :ok, location: @art_alfareri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @art_alfareri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_alfareris/1 or /art_alfareris/1.json
  def destroy
    @art_alfareri.destroy
    respond_to do |format|
      format.html { redirect_to art_alfareris_url, notice: "Art alfareri was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_alfareri
      @art_alfareri = ArtAlfareri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_alfareri_params
      params.require(:art_alfareri).permit(:titulo, :subtitulo, :localizacion, :telefono, :email, :informacion, :rss_facebook)
    end
end
