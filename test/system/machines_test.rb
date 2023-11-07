require "application_system_test_case"

class MachinesTest < ApplicationSystemTestCase
  setup do
    @machine = machines(:one)
  end

  test "visiting the index" do
    visit machines_url
    assert_selector "h1", text: "Machines"
  end

  test "should create machine" do
    visit machines_url
    click_on "New machine"

    fill_in "Gym", with: @machine.gym_id
    fill_in "Nome maquina", with: @machine.nome_maquina
    fill_in "Quan maquina", with: @machine.quan_maquina
    fill_in "Tipo maquina", with: @machine.tipo_maquina
    click_on "Create Machine"

    assert_text "Machine was successfully created"
    click_on "Back"
  end

  test "should update Machine" do
    visit machine_url(@machine)
    click_on "Edit this machine", match: :first

    fill_in "Gym", with: @machine.gym_id
    fill_in "Nome maquina", with: @machine.nome_maquina
    fill_in "Quan maquina", with: @machine.quan_maquina
    fill_in "Tipo maquina", with: @machine.tipo_maquina
    click_on "Update Machine"

    assert_text "Machine was successfully updated"
    click_on "Back"
  end

  test "should destroy Machine" do
    visit machine_url(@machine)
    click_on "Destroy this machine", match: :first

    assert_text "Machine was successfully destroyed"
  end
end
