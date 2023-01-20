require "application_system_test_case"

class LocadorsTest < ApplicationSystemTestCase
  setup do
    @locador = locadors(:one)
  end

  test "visiting the index" do
    visit locadors_url
    assert_selector "h1", text: "Locadors"
  end

  test "should create locador" do
    visit locadors_url
    click_on "New locador"

    fill_in "Cidade", with: @locador.cidade
    fill_in "Cpf", with: @locador.cpf
    fill_in "Email", with: @locador.email
    fill_in "Logradouro", with: @locador.logradouro
    fill_in "Nome", with: @locador.nome
    check "Status" if @locador.status
    fill_in "Telefone", with: @locador.telefone
    fill_in "Turma", with: @locador.turma
    click_on "Create Locador"

    assert_text "Locador was successfully created"
    click_on "Back"
  end

  test "should update Locador" do
    visit locador_url(@locador)
    click_on "Edit this locador", match: :first

    fill_in "Cidade", with: @locador.cidade
    fill_in "Cpf", with: @locador.cpf
    fill_in "Email", with: @locador.email
    fill_in "Logradouro", with: @locador.logradouro
    fill_in "Nome", with: @locador.nome
    check "Status" if @locador.status
    fill_in "Telefone", with: @locador.telefone
    fill_in "Turma", with: @locador.turma
    click_on "Update Locador"

    assert_text "Locador was successfully updated"
    click_on "Back"
  end

  test "should destroy Locador" do
    visit locador_url(@locador)
    click_on "Destroy this locador", match: :first

    assert_text "Locador was successfully destroyed"
  end
end
