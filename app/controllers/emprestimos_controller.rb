class EmprestimosController < ApplicationController
  before_action :set_emprestimo, only: %i[ show edit update destroy ]


  # GET /emprestimos or /emprestimos.json
  def index
    @emprestimos = Emprestimo.all

  end
  def abertos
    @emprestimos = Emprestimo.where(["status = ? ", true])

  end
  def fechados
    @emprestimos = Emprestimo.where(["status = ? ", false])

  end
  def show
  end

  # GET /emprestimos/1 or /emprestimos/1.json
  def pdf
    @emprestimo = Emprestimo.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Relatorio#{@emprestimo.id}",
        template:"schedule/relatorio"
      end
    end
  end

  # GET /emprestimos/new
  def new
    @emprestimo = Emprestimo.new
    @locador = Locador.all
    @objeto = Objeto.where(["status = ? ", "Disponível"])
    
  end

  # GET /emprestimos/1/edit
  def edit
  end

  # POST /emprestimos or /emprestimos.json
  def create
    @emprestimo = Emprestimo.new(emprestimo_params)
    @emprestimo.status = true
    @emprestimo.data_emprestimo = DateTime.current.to_date
    respond_to do |format|
      if @emprestimo.save
        format.html { redirect_to emprestimo_url(@emprestimo), notice: "Emprestimo was successfully created." }
        format.json { render :show, status: :created, location: @emprestimo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emprestimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emprestimos/1 or /emprestimos/1.json
  def update
    respond_to do |format|
      if @emprestimo.update(emprestimo_params)
        format.html { redirect_to emprestimo_url(@emprestimo), notice: "Emprestimo was successfully updated." }
        format.json { render :show, status: :ok, location: @emprestimo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emprestimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprestimos/1 or /emprestimos/1.json
  def destroy
    @emprestimo.destroy

    respond_to do |format|
      format.html { redirect_to emprestimos_url, notice: "Emprestimo was successfully destroyed." }
      format.json { head :no_content }
    end

  
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_emprestimo
      @emprestimo = Emprestimo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emprestimo_params
      params.require(:emprestimo).permit(:data_emprestimo, :data_devolucao, :status, :observacacao, :locador_id, :objeto_id)
    end

    
end
