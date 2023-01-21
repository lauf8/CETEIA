class CreateObjetos < ActiveRecord::Migration[7.0]
  def change
    create_table :objetos do |t|
      t.string :codigo
      t.string :tipo
      t.string :descricacao
      t.string :condicao
      t.string :status


      t.timestamps
    end
  end
end
