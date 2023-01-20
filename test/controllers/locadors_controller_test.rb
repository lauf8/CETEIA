require "test_helper"

class LocadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locador = locadors(:one)
  end

  test "should get index" do
    get locadors_url
    assert_response :success
  end

  test "should get new" do
    get new_locador_url
    assert_response :success
  end

  test "should create locador" do
    assert_difference("Locador.count") do
      post locadors_url, params: { locador: { cidade: @locador.cidade, cpf: @locador.cpf, email: @locador.email, logradouro: @locador.logradouro, nome: @locador.nome, status: @locador.status, telefone: @locador.telefone, turma: @locador.turma } }
    end

    assert_redirected_to locador_url(Locador.last)
  end

  test "should show locador" do
    get locador_url(@locador)
    assert_response :success
  end

  test "should get edit" do
    get edit_locador_url(@locador)
    assert_response :success
  end

  test "should update locador" do
    patch locador_url(@locador), params: { locador: { cidade: @locador.cidade, cpf: @locador.cpf, email: @locador.email, logradouro: @locador.logradouro, nome: @locador.nome, status: @locador.status, telefone: @locador.telefone, turma: @locador.turma } }
    assert_redirected_to locador_url(@locador)
  end

  test "should destroy locador" do
    assert_difference("Locador.count", -1) do
      delete locador_url(@locador)
    end

    assert_redirected_to locadors_url
  end
end
