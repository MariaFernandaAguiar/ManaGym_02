class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :tipo_treino, limit: 50
      t.integer :serie_treino
      t.integer :repeticoes
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
