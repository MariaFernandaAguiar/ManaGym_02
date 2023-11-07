class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :nome_aluno, limit: 100
      t.string :rg_aluno, limit: 20
      t.string :email_aluno, limit: 100
      t.date :data_matricula
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
