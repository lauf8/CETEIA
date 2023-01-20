class LocadorsController < ApplicationController
  before_action :set_locador, only: %i[ show edit update destroy ]

  # GET /locadors or /locadors.json
  def index
    @locadors = Locador.all
  end

  # GET /locadors/1 or /locadors/1.json
  def show
  end

  # GET /locadors/new
  def new
    @locador = Locador.new
  end

  # GET /locadors/1/edit
  def edit
  end

  # POST /locadors or /locadors.json
  def create
    @locador = Locador.new(locador_params)

    respond_to do |format|
      if @locador.save
        format.html { redirect_to locador_url(@locador), notice: "Locador was successfully created." }
        format.json { render :show, status: :created, location: @locador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @locador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locadors/1 or /locadors/1.json
  def update
    respond_to do |format|
      if @locador.update(locador_params)
        format.html { redirect_to locador_url(@locador), notice: "Locador was successfully updated." }
        format.json { render :show, status: :ok, location: @locador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @locador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locadors/1 or /locadors/1.json
  def destroy
    @locador.destroy

    respond_to do |format|
      format.html { redirect_to locadors_url, notice: "Locador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locador
      @locador = Locador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def locador_params
      params.require(:locador).permit(:nome, :cpf, :turma, :telefone, :email, :cidade, :logradouro, :status)
    end
end
