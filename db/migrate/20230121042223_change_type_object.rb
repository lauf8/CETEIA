class ChangeTypeObject < ActiveRecord::Migration[7.0]
  def change
    change_column :objetos, :descricacao, :text

  end
end
