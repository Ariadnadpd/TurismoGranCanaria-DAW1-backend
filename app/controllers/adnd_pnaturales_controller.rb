class AdndPnaturalesController < ApplicationController
  before_action :set_adnd_pnaturale, only: %i[ show edit update destroy ]

  # GET /adnd_pnaturales or /adnd_pnaturales.json
  def index
    @adnd_pnaturales = AdndPnaturale.all
  end

  # GET /adnd_pnaturales/1 or /adnd_pnaturales/1.json
  def show
  end

  # GET /adnd_pnaturales/new
  def new
    @adnd_pnaturale = AdndPnaturale.new
  end

  # GET /adnd_pnaturales/1/edit
  def edit
  end

  # POST /adnd_pnaturales or /adnd_pnaturales.json
  def create
    @adnd_pnaturale = AdndPnaturale.new(adnd_pnaturale_params)

    respond_to do |format|
      if @adnd_pnaturale.save
        format.html { redirect_to @adnd_pnaturale, notice: "Adnd pnaturale was successfully created." }
        format.json { render :show, status: :created, location: @adnd_pnaturale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adnd_pnaturale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adnd_pnaturales/1 or /adnd_pnaturales/1.json
  def update
    respond_to do |format|
      if @adnd_pnaturale.update(adnd_pnaturale_params)
        format.html { redirect_to @adnd_pnaturale, notice: "Adnd pnaturale was successfully updated." }
        format.json { render :show, status: :ok, location: @adnd_pnaturale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adnd_pnaturale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adnd_pnaturales/1 or /adnd_pnaturales/1.json
  def destroy
    @adnd_pnaturale.destroy
    respond_to do |format|
      format.html { redirect_to adnd_pnaturales_url, notice: "Adnd pnaturale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adnd_pnaturale
      @adnd_pnaturale = AdndPnaturale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adnd_pnaturale_params
      params.require(:adnd_pnaturale).permit(:titulo, :subtitulo, :ruta)
    end
end
