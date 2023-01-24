class Emprestimo < ApplicationRecord
  belongs_to :locador
  has_many :objeto_emprestimos
  has_many :objetos, through: :objeto_emprestimos

end
