require "application_system_test_case"

class ObjetoEmprestimosTest < ApplicationSystemTestCase
  setup do
    @objeto_emprestimo = objeto_emprestimos(:one)
  end

  test "visiting the index" do
    visit objeto_emprestimos_url
    assert_selector "h1", text: "Objeto emprestimos"
  end

  test "should create objeto emprestimo" do
    visit objeto_emprestimos_url
    click_on "New objeto emprestimo"

    fill_in "Emprestimo", with: @objeto_emprestimo.emprestimo_id
    fill_in "Objeto", with: @objeto_emprestimo.objeto_id
    click_on "Create Objeto emprestimo"

    assert_text "Objeto emprestimo was successfully created"
    click_on "Back"
  end

  test "should update Objeto emprestimo" do
    visit objeto_emprestimo_url(@objeto_emprestimo)
    click_on "Edit this objeto emprestimo", match: :first

    fill_in "Emprestimo", with: @objeto_emprestimo.emprestimo_id
    fill_in "Objeto", with: @objeto_emprestimo.objeto_id
    click_on "Update Objeto emprestimo"

    assert_text "Objeto emprestimo was successfully updated"
    click_on "Back"
  end

  test "should destroy Objeto emprestimo" do
    visit objeto_emprestimo_url(@objeto_emprestimo)
    click_on "Destroy this objeto emprestimo", match: :first

    assert_text "Objeto emprestimo was successfully destroyed"
  end
end
