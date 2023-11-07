class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.integer :quan_maquina
      t.string :tipo_maquina
      t.string :nome_maquina
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
