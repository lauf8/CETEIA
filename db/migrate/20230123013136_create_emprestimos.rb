class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.date :data_emprestimo
      t.date :data_devolucao
      t.boolean :status
      t.string :observacacao
      t.references :locador, null: false, foreign_key: true
      t.references :objeto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
