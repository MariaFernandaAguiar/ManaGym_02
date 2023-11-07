class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :nome_academia, limit: 100
      t.string :cnpj_academia, limit: 20
      t.integer :quan_alunos
      t.string :endereco_academia, limit: 100

      t.timestamps
    end
    add_index :gyms, :cnpj_academia, unique: true
  end
end
