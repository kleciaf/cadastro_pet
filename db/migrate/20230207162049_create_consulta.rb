class CreateConsulta < ActiveRecord::Migration[6.1]
  def change
    create_table :consulta do |t|
      t.datetime :data
      t.references :veterinario, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
