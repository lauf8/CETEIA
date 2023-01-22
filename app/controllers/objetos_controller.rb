class ObjetosController < ApplicationController
  before_action :set_objeto, only: %i[ show edit update destroy ]

  # GET /objetos or /objetos.json
  def index
      @objetos = Objeto.order(:codigo).page params[:page]
  end

  # GET /objetos/1 or /objetos/1.json
  def show
  end

  # GET /objetos/new
  def new
    @objeto = Objeto.new
  end

  # GET /objetos/1/edit
  def edit
  end


  # POST /objetos or /objetos.json
  def create
    @objeto = Objeto.new(objeto_params)
    @objeto.codigo = "CETEIA" + SecureRandom.alphanumeric(8)
    @objeto.status = "Disponível"
    respond_to do |format|
      if @objeto.save
        
        format.html { redirect_to objeto_url(@objeto), notice: "Objeto was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /objetos/1 or /objetos/1.json
  def update
    respond_to do |format|
      if @objeto.update(objeto_params)
        format.html { redirect_to objeto_url(@objeto), notice: "Objeto was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetos/1 or /objetos/1.json
  def destroy
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to objetos_url, notice: "Objeto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objeto
      @objeto = Objeto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def objeto_params
      params.require(:objeto).permit(:codigo, :tipo, :descricacao, :condicao, :status)
    end
end
