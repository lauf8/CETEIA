class CreateObjetoEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :objeto_emprestimos do |t|
      t.references :objeto, null: false, foreign_key: true
      t.references :emprestimo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
