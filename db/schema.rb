# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_07_140359) do
  create_table "employees", force: :cascade do |t|
    t.string "nome_funcionario", limit: 100
    t.string "rg_funcionario", limit: 20
    t.string "email_funcionario", limit: 100
    t.date "data_inicio"
    t.decimal "salario_funcionario"
    t.integer "gym_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_employees_on_gym_id"
    t.index ["rg_funcionario"], name: "index_employees_on_rg_funcionario", unique: true
  end

  create_table "gyms", force: :cascade do |t|
    t.string "nome_academia", limit: 100
    t.string "cnpj_academia", limit: 20
    t.integer "quan_alunos"
    t.string "endereco_academia", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cnpj_academia"], name: "index_gyms_on_cnpj_academia", unique: true
  end

  create_table "machines", force: :cascade do |t|
    t.integer "quan_maquina"
    t.string "tipo_maquina"
    t.string "nome_maquina"
    t.integer "gym_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_machines_on_gym_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "nome_aluno", limit: 100
    t.string "rg_aluno", limit: 20
    t.string "email_aluno", limit: 100
    t.date "data_matricula"
    t.integer "gym_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_students_on_gym_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "tipo_treino", limit: 50
    t.integer "serie_treino"
    t.integer "repeticoes"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_trainings_on_student_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employees", "gyms"
  add_foreign_key "machines", "gyms"
  add_foreign_key "students", "gyms"
  add_foreign_key "trainings", "students"
end
