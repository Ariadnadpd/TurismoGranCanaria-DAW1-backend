class ArtTtradicionalesController < ApplicationController
  before_action :set_art_ttradicionale, only: %i[ show edit update destroy ]

  # GET /art_ttradicionales or /art_ttradicionales.json
  def index
    @art_ttradicionales = ArtTtradicionale.all
  end

  # GET /art_ttradicionales/1 or /art_ttradicionales/1.json
  def show
  end

  # GET /art_ttradicionales/new
  def new
    @art_ttradicionale = ArtTtradicionale.new
  end

  # GET /art_ttradicionales/1/edit
  def edit
  end

  # POST /art_ttradicionales or /art_ttradicionales.json
  def create
    @art_ttradicionale = ArtTtradicionale.new(art_ttradicionale_params)

    respond_to do |format|
      if @art_ttradicionale.save
        format.html { redirect_to @art_ttradicionale, notice: "Art ttradicionale was successfully created." }
        format.json { render :show, status: :created, location: @art_ttradicionale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @art_ttradicionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_ttradicionales/1 or /art_ttradicionales/1.json
  def update
    respond_to do |format|
      if @art_ttradicionale.update(art_ttradicionale_params)
        format.html { redirect_to @art_ttradicionale, notice: "Art ttradicionale was successfully updated." }
        format.json { render :show, status: :ok, location: @art_ttradicionale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @art_ttradicionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_ttradicionales/1 or /art_ttradicionales/1.json
  def destroy
    @art_ttradicionale.destroy
    respond_to do |format|
      format.html { redirect_to art_ttradicionales_url, notice: "Art ttradicionale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_ttradicionale
      @art_ttradicionale = ArtTtradicionale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_ttradicionale_params
      params.require(:art_ttradicionale).permit(:titulo, :subtitulo, :localizacion, :telefono, :informacion, :rss_facebook, :rss_instagram)
    end
end
