require "test_helper"

class ObjetoEmprestimosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objeto_emprestimo = objeto_emprestimos(:one)
  end

  test "should get index" do
    get objeto_emprestimos_url
    assert_response :success
  end

  test "should get new" do
    get new_objeto_emprestimo_url
    assert_response :success
  end

  test "should create objeto_emprestimo" do
    assert_difference("ObjetoEmprestimo.count") do
      post objeto_emprestimos_url, params: { objeto_emprestimo: { emprestimo_id: @objeto_emprestimo.emprestimo_id, objeto_id: @objeto_emprestimo.objeto_id } }
    end

    assert_redirected_to objeto_emprestimo_url(ObjetoEmprestimo.last)
  end

  test "should show objeto_emprestimo" do
    get objeto_emprestimo_url(@objeto_emprestimo)
    assert_response :success
  end

  test "should get edit" do
    get edit_objeto_emprestimo_url(@objeto_emprestimo)
    assert_response :success
  end

  test "should update objeto_emprestimo" do
    patch objeto_emprestimo_url(@objeto_emprestimo), params: { objeto_emprestimo: { emprestimo_id: @objeto_emprestimo.emprestimo_id, objeto_id: @objeto_emprestimo.objeto_id } }
    assert_redirected_to objeto_emprestimo_url(@objeto_emprestimo)
  end

  test "should destroy objeto_emprestimo" do
    assert_difference("ObjetoEmprestimo.count", -1) do
      delete objeto_emprestimo_url(@objeto_emprestimo)
    end

    assert_redirected_to objeto_emprestimos_url
  end
end
