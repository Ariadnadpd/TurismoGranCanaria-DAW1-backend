require "application_system_test_case"

class ActBuceosTest < ApplicationSystemTestCase
  setup do
    @act_buceo = act_buceos(:one)
  end

  test "visiting the index" do
    visit act_buceos_url
    assert_selector "h1", text: "Act Buceos"
  end

  test "creating a Act buceo" do
    visit act_buceos_url
    click_on "New Act Buceo"

    fill_in "Localizacion", with: @act_buceo.localizacion
    fill_in "Sitioweb", with: @act_buceo.sitioweb
    fill_in "Subtitulo", with: @act_buceo.subtitulo
    fill_in "Telefono", with: @act_buceo.telefono
    fill_in "Titulo", with: @act_buceo.titulo
    click_on "Create Act buceo"

    assert_text "Act buceo was successfully created"
    click_on "Back"
  end

  test "updating a Act buceo" do
    visit act_buceos_url
    click_on "Edit", match: :first

    fill_in "Localizacion", with: @act_buceo.localizacion
    fill_in "Sitioweb", with: @act_buceo.sitioweb
    fill_in "Subtitulo", with: @act_buceo.subtitulo
    fill_in "Telefono", with: @act_buceo.telefono
    fill_in "Titulo", with: @act_buceo.titulo
    click_on "Update Act buceo"

    assert_text "Act buceo was successfully updated"
    click_on "Back"
  end

  test "destroying a Act buceo" do
    visit act_buceos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Act buceo was successfully destroyed"
  end
end
