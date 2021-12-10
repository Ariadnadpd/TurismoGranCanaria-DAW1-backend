require "application_system_test_case"

class AdndMuseosTest < ApplicationSystemTestCase
  setup do
    @adnd_museo = adnd_museos(:one)
  end

  test "visiting the index" do
    visit adnd_museos_url
    assert_selector "h1", text: "Adnd Museos"
  end

  test "creating a Adnd museo" do
    visit adnd_museos_url
    click_on "New Adnd Museo"

    fill_in "Localizacion", with: @adnd_museo.localizacion
    fill_in "Sitioweb", with: @adnd_museo.sitioweb
    fill_in "Subtitulo", with: @adnd_museo.subtitulo
    fill_in "Telefono", with: @adnd_museo.telefono
    fill_in "Titulo", with: @adnd_museo.titulo
    click_on "Create Adnd museo"

    assert_text "Adnd museo was successfully created"
    click_on "Back"
  end

  test "updating a Adnd museo" do
    visit adnd_museos_url
    click_on "Edit", match: :first

    fill_in "Localizacion", with: @adnd_museo.localizacion
    fill_in "Sitioweb", with: @adnd_museo.sitioweb
    fill_in "Subtitulo", with: @adnd_museo.subtitulo
    fill_in "Telefono", with: @adnd_museo.telefono
    fill_in "Titulo", with: @adnd_museo.titulo
    click_on "Update Adnd museo"

    assert_text "Adnd museo was successfully updated"
    click_on "Back"
  end

  test "destroying a Adnd museo" do
    visit adnd_museos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adnd museo was successfully destroyed"
  end
end
