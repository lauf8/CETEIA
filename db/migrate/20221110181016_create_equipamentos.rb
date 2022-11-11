class CreateEquipamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :equipamentos do |t|
      t.string :identificador
      t.string :tipo
      t.text :descricao
      t.string :condicao
      t.string :status

      t.timestamps
    end
  end
end
