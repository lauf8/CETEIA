class CreateLocadors < ActiveRecord::Migration[7.0]
  def change
    create_table :locadors do |t|
      t.string :nome
      t.string :cpf
      t.string :turma
      t.string :telefone
      t.string :email
      t.string :cidade
      t.string :logradouro
      t.boolean :status

      t.timestamps
    end
  end
end
