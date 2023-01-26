class Emprestimo < ApplicationRecord
  belongs_to :locador
  belongs_to :objeto
end
