class ActSenderismosController < ApplicationController
  before_action :set_act_senderismo, only: %i[ show edit update destroy ]

  # GET /act_senderismos or /act_senderismos.json
  def index
    @act_senderismos = ActSenderismo.all
  end

  # GET /act_senderismos/1 or /act_senderismos/1.json
  def show
  end

  # GET /act_senderismos/new
  def new
    @act_senderismo = ActSenderismo.new
  end

  # GET /act_senderismos/1/edit
  def edit
  end

  # POST /act_senderismos or /act_senderismos.json
  def create
    @act_senderismo = ActSenderismo.new(act_senderismo_params)

    respond_to do |format|
      if @act_senderismo.save
        format.html { redirect_to @act_senderismo, notice: "La nueva actividad de senderismo fue creada correctamente." }
        format.json { render :show, status: :created, location: @act_senderismo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @act_senderismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_senderismos/1 or /act_senderismos/1.json
  def update
    respond_to do |format|
      if @act_senderismo.update(act_senderismo_params)
        format.html { redirect_to @act_senderismo, notice: "La actividad de senderismo fue actualizada correctamente." }
        format.json { render :show, status: :ok, location: @act_senderismo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @act_senderismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_senderismos/1 or /act_senderismos/1.json
  def destroy
    @act_senderismo.destroy
    respond_to do |format|
      format.html { redirect_to act_senderismos_url, notice: "La actividad de senderismo fue eliminada correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_senderismo
      @act_senderismo = ActSenderismo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def act_senderismo_params
      params.require(:act_senderismo).permit(:titulo, :subtitulo, :ruta)
    end
end
