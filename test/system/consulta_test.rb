require "application_system_test_case"

class ConsultaTest < ApplicationSystemTestCase
  setup do
    @consultum = consulta(:one)
  end

  test "visiting the index" do
    visit consulta_url
    assert_selector "h1", text: "Consulta"
  end

  test "creating a Consultum" do
    visit consulta_url
    click_on "New Consultum"

    fill_in "Data", with: @consultum.data
    fill_in "Pet", with: @consultum.pet_id
    fill_in "Veterinario", with: @consultum.veterinario_id
    click_on "Create Consultum"

    assert_text "Consultum was successfully created"
    click_on "Back"
  end

  test "updating a Consultum" do
    visit consulta_url
    click_on "Edit", match: :first

    fill_in "Data", with: @consultum.data
    fill_in "Pet", with: @consultum.pet_id
    fill_in "Veterinario", with: @consultum.veterinario_id
    click_on "Update Consultum"

    assert_text "Consultum was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultum" do
    visit consulta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultum was successfully destroyed"
  end
end
