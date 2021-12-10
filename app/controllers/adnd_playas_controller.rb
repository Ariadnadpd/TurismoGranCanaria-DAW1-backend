class AdndPlayasController < ApplicationController
  before_action :set_adnd_playa, only: %i[ show edit update destroy ]

  # GET /adnd_playas or /adnd_playas.json
  def index
    @adnd_playas = AdndPlaya.all
  end

  # GET /adnd_playas/1 or /adnd_playas/1.json
  def show
  end

  # GET /adnd_playas/new
  def new
    @adnd_playa = AdndPlaya.new
  end

  # GET /adnd_playas/1/edit
  def edit
  end

  # POST /adnd_playas or /adnd_playas.json
  def create
    @adnd_playa = AdndPlaya.new(adnd_playa_params)

    respond_to do |format|
      if @adnd_playa.save
        format.html { redirect_to @adnd_playa, notice: "El sitio de playa fue creado correctamente." }
        format.json { render :show, status: :created, location: @adnd_playa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adnd_playa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adnd_playas/1 or /adnd_playas/1.json
  def update
    respond_to do |format|
      if @adnd_playa.update(adnd_playa_params)
        format.html { redirect_to @adnd_playa, notice: "El sitio de playa fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @adnd_playa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adnd_playa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adnd_playas/1 or /adnd_playas/1.json
  def destroy
    @adnd_playa.destroy
    respond_to do |format|
      format.html { redirect_to adnd_playas_url, notice: "El sitio de playa fue eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adnd_playa
      @adnd_playa = AdndPlaya.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adnd_playa_params
      params.require(:adnd_playa).permit(:titulo, :subtitulo, :localizacion)
    end
end
