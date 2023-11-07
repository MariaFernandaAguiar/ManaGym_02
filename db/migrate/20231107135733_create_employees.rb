class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :nome_funcionario, limit: 100
      t.string :rg_funcionario, limit: 20
      t.string :email_funcionario, limit: 100
      t.date :data_inicio
      t.decimal :salario_funcionario
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
    add_index :employees, :rg_funcionario, unique: true
  end
end
