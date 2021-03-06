require "application_system_test_case"

class ColaboradorsTest < ApplicationSystemTestCase
  setup do
    @colaborador = colaboradors(:one)
  end

  test "visiting the index" do
    visit colaboradors_url
    assert_selector "h1", text: "Colaboradors"
  end

  test "creating a Colaborador" do
    visit colaboradors_url
    click_on "New Colaborador"

    fill_in "Celular", with: @colaborador.celular
    fill_in "Cpf", with: @colaborador.cpf
    fill_in "Email", with: @colaborador.email
    fill_in "Nome", with: @colaborador.nome
    fill_in "Rg", with: @colaborador.rg
    fill_in "Whatsapp", with: @colaborador.whatsapp
    click_on "Create Colaborador"

    assert_text "Colaborador was successfully created"
    click_on "Back"
  end

  test "updating a Colaborador" do
    visit colaboradors_url
    click_on "Edit", match: :first

    fill_in "Celular", with: @colaborador.celular
    fill_in "Cpf", with: @colaborador.cpf
    fill_in "Email", with: @colaborador.email
    fill_in "Nome", with: @colaborador.nome
    fill_in "Rg", with: @colaborador.rg
    fill_in "Whatsapp", with: @colaborador.whatsapp
    click_on "Update Colaborador"

    assert_text "Colaborador was successfully updated"
    click_on "Back"
  end

  test "destroying a Colaborador" do
    visit colaboradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colaborador was successfully destroyed"
  end
end
