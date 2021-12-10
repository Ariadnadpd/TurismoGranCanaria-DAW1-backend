class ActBuceosController < ApplicationController
  before_action :set_act_buceo, only: %i[ show edit update destroy ]

  # GET /act_buceos or /act_buceos.json
  def index
    @act_buceos = ActBuceo.all
  end

  # GET /act_buceos/1 or /act_buceos/1.json
  def show
  end

  # GET /act_buceos/new
  def new
    @act_buceo = ActBuceo.new
  end

  # GET /act_buceos/1/edit
  def edit
  end

  # POST /act_buceos or /act_buceos.json
  def create
    @act_buceo = ActBuceo.new(act_buceo_params)

    respond_to do |format|
      if @act_buceo.save
        format.html { redirect_to @act_buceo, notice: "La nueva actividad de buceo fue creada correctamente." }
        format.json { render :show, status: :created, location: @act_buceo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @act_buceo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_buceos/1 or /act_buceos/1.json
  def update
    respond_to do |format|
      if @act_buceo.update(act_buceo_params)
        format.html { redirect_to @act_buceo, notice: "La actividad de buceo fue actualizada correctamente" }
        format.json { render :show, status: :ok, location: @act_buceo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @act_buceo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_buceos/1 or /act_buceos/1.json
  def destroy
    @act_buceo.destroy
    respond_to do |format|
      format.html { redirect_to act_buceos_url, notice: "La actividad de buceo fue eliminada correctamente" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_buceo
      @act_buceo = ActBuceo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def act_buceo_params
      params.require(:act_buceo).permit(:titulo, :subtitulo, :localizacion, :telefono, :sitioweb)
    end
end
