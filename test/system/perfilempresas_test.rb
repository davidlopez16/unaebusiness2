require "application_system_test_case"

class PerfilempresasTest < ApplicationSystemTestCase
  setup do
    @perfilempresa = perfilempresas(:one)
  end

  test "visiting the index" do
    visit perfilempresas_url
    assert_selector "h1", text: "Perfilempresas"
  end

  test "creating a Perfilempresa" do
    visit perfilempresas_url
    click_on "New Perfilempresa"

    click_on "Create Perfilempresa"

    assert_text "Perfilempresa was successfully created"
    click_on "Back"
  end

  test "updating a Perfilempresa" do
    visit perfilempresas_url
    click_on "Edit", match: :first

    click_on "Update Perfilempresa"

    assert_text "Perfilempresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Perfilempresa" do
    visit perfilempresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perfilempresa was successfully destroyed"
  end
end
