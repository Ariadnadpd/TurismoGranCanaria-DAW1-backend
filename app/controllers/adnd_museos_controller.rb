class AdndMuseosController < ApplicationController
  before_action :set_adnd_museo, only: %i[ show edit update destroy ]

  # GET /adnd_museos or /adnd_museos.json
  def index
    @adnd_museos = AdndMuseo.all
  end

  # GET /adnd_museos/1 or /adnd_museos/1.json
  def show
  end

  # GET /adnd_museos/new
  def new
    @adnd_museo = AdndMuseo.new
  end

  # GET /adnd_museos/1/edit
  def edit
  end

  # POST /adnd_museos or /adnd_museos.json
  def create
    @adnd_museo = AdndMuseo.new(adnd_museo_params)

    respond_to do |format|
      if @adnd_museo.save
        format.html { redirect_to @adnd_museo, notice: "Adnd museo was successfully created." }
        format.json { render :show, status: :created, location: @adnd_museo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adnd_museo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adnd_museos/1 or /adnd_museos/1.json
  def update
    respond_to do |format|
      if @adnd_museo.update(adnd_museo_params)
        format.html { redirect_to @adnd_museo, notice: "Adnd museo was successfully updated." }
        format.json { render :show, status: :ok, location: @adnd_museo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adnd_museo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adnd_museos/1 or /adnd_museos/1.json
  def destroy
    @adnd_museo.destroy
    respond_to do |format|
      format.html { redirect_to adnd_museos_url, notice: "Adnd museo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adnd_museo
      @adnd_museo = AdndMuseo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adnd_museo_params
      params.require(:adnd_museo).permit(:titulo, :subtitulo, :localizacion, :telefono, :sitioweb)
    end
end
