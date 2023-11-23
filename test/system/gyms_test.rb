require "application_system_test_case"

class GymsTest < ApplicationSystemTestCase
  setup do
    @gym = gyms(:one)
  end

  test "visiting the index" do
    visit gyms_url
    assert_selector "h1", text: "Gyms"
  end

  test "should create gym" do
    visit gyms_url
    click_on "New gym"

    fill_in "Cnpj academia", with: @gym.cnpj_academia
    fill_in "Endereco academia", with: @gym.endereco_academia
    fill_in "Nome academia", with: @gym.nome_academia
    fill_in "Quan alunos", with: @gym.quan_alunos
    click_on "Create Gym"

    assert_text "Gym was successfully created"
    click_on "Back"
  end

  test "should update Gym" do
    visit gym_url(@gym)
    click_on "Edit this gym", match: :first

    fill_in "Cnpj academia", with: @gym.cnpj_academia
    fill_in "Endereco academia", with: @gym.endereco_academia
    fill_in "Nome academia", with: @gym.nome_academia
    fill_in "Quan alunos", with: @gym.quan_alunos
    click_on "Atualizar Academia"

    assert_text "Gym was successfully updated"
    click_on "Back"
  end

  test "should destroy Gym" do
    visit gym_url(@gym)
    click_on "Destroy this gym", match: :first

    assert_text "Gym was successfully destroyed"
  end
end
