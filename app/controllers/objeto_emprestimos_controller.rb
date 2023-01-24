class ObjetoEmprestimosController < ApplicationController
  before_action :set_objeto_emprestimo, only: %i[ show edit update destroy ]

  # GET /objeto_emprestimos or /objeto_emprestimos.json
  def index
    @objeto_emprestimos = ObjetoEmprestimo.all
  end

  # GET /objeto_emprestimos/1 or /objeto_emprestimos/1.json
  def show
  end

  # GET /objeto_emprestimos/new
  def new
    @objeto_emprestimo = ObjetoEmprestimo.new
  end

  # GET /objeto_emprestimos/1/edit
  def edit
  end

  # POST /objeto_emprestimos or /objeto_emprestimos.json
  def create
    @objeto_emprestimo = ObjetoEmprestimo.new(objeto_emprestimo_params)

    respond_to do |format|
      if @objeto_emprestimo.save
        format.html { redirect_to objeto_emprestimo_url(@objeto_emprestimo), notice: "Objeto emprestimo was successfully created." }
        format.json { render :show, status: :created, location: @objeto_emprestimo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto_emprestimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objeto_emprestimos/1 or /objeto_emprestimos/1.json
  def update
    respond_to do |format|
      if @objeto_emprestimo.update(objeto_emprestimo_params)
        format.html { redirect_to objeto_emprestimo_url(@objeto_emprestimo), notice: "Objeto emprestimo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto_emprestimo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto_emprestimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objeto_emprestimos/1 or /objeto_emprestimos/1.json
  def destroy
    @objeto_emprestimo.destroy

    respond_to do |format|
      format.html { redirect_to objeto_emprestimos_url, notice: "Objeto emprestimo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objeto_emprestimo
      @objeto_emprestimo = ObjetoEmprestimo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def objeto_emprestimo_params
      params.require(:objeto_emprestimo).permit(:objeto_id, :emprestimo_id)
    end
end
