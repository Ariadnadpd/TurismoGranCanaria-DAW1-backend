require "application_system_test_case"

class ActSenderismosTest < ApplicationSystemTestCase
  setup do
    @act_senderismo = act_senderismos(:one)
  end

  test "visiting the index" do
    visit act_senderismos_url
    assert_selector "h1", text: "Act Senderismos"
  end

  test "creating a Act senderismo" do
    visit act_senderismos_url
    click_on "New Act Senderismo"

    fill_in "Ruta", with: @act_senderismo.ruta
    fill_in "Subtitulo", with: @act_senderismo.subtitulo
    fill_in "Titulo", with: @act_senderismo.titulo
    click_on "Create Act senderismo"

    assert_text "Act senderismo was successfully created"
    click_on "Back"
  end

  test "updating a Act senderismo" do
    visit act_senderismos_url
    click_on "Edit", match: :first

    fill_in "Ruta", with: @act_senderismo.ruta
    fill_in "Subtitulo", with: @act_senderismo.subtitulo
    fill_in "Titulo", with: @act_senderismo.titulo
    click_on "Update Act senderismo"

    assert_text "Act senderismo was successfully updated"
    click_on "Back"
  end

  test "destroying a Act senderismo" do
    visit act_senderismos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Act senderismo was successfully destroyed"
  end
end
