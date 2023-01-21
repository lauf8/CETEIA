require "application_system_test_case"

class ObjetosTest < ApplicationSystemTestCase
  setup do
    @objeto = objetos(:one)
  end

  test "visiting the index" do
    visit objetos_url
    assert_selector "h1", text: "Objetos"
  end

  test "should create objeto" do
    visit objetos_url
    click_on "New objeto"

    fill_in "Codigo", with: @objeto.codigo
    fill_in "Condicao", with: @objeto.condicao
    fill_in "Descricacao", with: @objeto.descricacao
    fill_in "Status", with: @objeto.status
    fill_in "Tipo", with: @objeto.tipo
    click_on "Create Objeto"

    assert_text "Objeto was successfully created"
    click_on "Back"
  end

  test "should update Objeto" do
    visit objeto_url(@objeto)
    click_on "Edit this objeto", match: :first

    fill_in "Codigo", with: @objeto.codigo
    fill_in "Condicao", with: @objeto.condicao
    fill_in "Descricacao", with: @objeto.descricacao
    fill_in "Status", with: @objeto.status
    fill_in "Tipo", with: @objeto.tipo
    click_on "Update Objeto"

    assert_text "Objeto was successfully updated"
    click_on "Back"
  end

  test "should destroy Objeto" do
    visit objeto_url(@objeto)
    click_on "Destroy this objeto", match: :first

    assert_text "Objeto was successfully destroyed"
  end
end
