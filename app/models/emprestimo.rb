class Emprestimo < ApplicationRecord
  belongs_to :locador
  belongs_to :objeto
  after_save :update_related_attribute
  private

  def update_related_attribute
    objeto = Objeto.find(objeto_id)
    objeto.update_attribute(:status, "Emprestado")
  end

end
