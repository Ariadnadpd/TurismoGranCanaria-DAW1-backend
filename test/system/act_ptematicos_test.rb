require "application_system_test_case"

class ActPtematicosTest < ApplicationSystemTestCase
  setup do
    @act_ptematico = act_ptematicos(:one)
  end

  test "visiting the index" do
    visit act_ptematicos_url
    assert_selector "h1", text: "Act Ptematicos"
  end

  test "creating a Act ptematico" do
    visit act_ptematicos_url
    click_on "New Act Ptematico"

    fill_in "Localizacion", with: @act_ptematico.localizacion
    fill_in "Sitioweb", with: @act_ptematico.sitioweb
    fill_in "Subtitulo", with: @act_ptematico.subtitulo
    fill_in "Telefono", with: @act_ptematico.telefono
    fill_in "Titulo", with: @act_ptematico.titulo
    click_on "Create Act ptematico"

    assert_text "Act ptematico was successfully created"
    click_on "Back"
  end

  test "updating a Act ptematico" do
    visit act_ptematicos_url
    click_on "Edit", match: :first

    fill_in "Localizacion", with: @act_ptematico.localizacion
    fill_in "Sitioweb", with: @act_ptematico.sitioweb
    fill_in "Subtitulo", with: @act_ptematico.subtitulo
    fill_in "Telefono", with: @act_ptematico.telefono
    fill_in "Titulo", with: @act_ptematico.titulo
    click_on "Update Act ptematico"

    assert_text "Act ptematico was successfully updated"
    click_on "Back"
  end

  test "destroying a Act ptematico" do
    visit act_ptematicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Act ptematico was successfully destroyed"
  end
end
