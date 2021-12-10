require "application_system_test_case"

class AdndPlayasTest < ApplicationSystemTestCase
  setup do
    @adnd_playa = adnd_playas(:one)
  end

  test "visiting the index" do
    visit adnd_playas_url
    assert_selector "h1", text: "Adnd Playas"
  end

  test "creating a Adnd playa" do
    visit adnd_playas_url
    click_on "New Adnd Playa"

    fill_in "Localizacion", with: @adnd_playa.localizacion
    fill_in "Subtitulo", with: @adnd_playa.subtitulo
    fill_in "Titulo", with: @adnd_playa.titulo
    click_on "Create Adnd playa"

    assert_text "Adnd playa was successfully created"
    click_on "Back"
  end

  test "updating a Adnd playa" do
    visit adnd_playas_url
    click_on "Edit", match: :first

    fill_in "Localizacion", with: @adnd_playa.localizacion
    fill_in "Subtitulo", with: @adnd_playa.subtitulo
    fill_in "Titulo", with: @adnd_playa.titulo
    click_on "Update Adnd playa"

    assert_text "Adnd playa was successfully updated"
    click_on "Back"
  end

  test "destroying a Adnd playa" do
    visit adnd_playas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adnd playa was successfully destroyed"
  end
end
