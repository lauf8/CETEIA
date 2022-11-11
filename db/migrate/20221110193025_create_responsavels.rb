class CreateResponsavels < ActiveRecord::Migration[7.0]
  def change
    create_table :responsavels do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :matricula
      t.string :telefone
      t.string :email
      t.string :turma

      t.timestamps
    end
  end
end
