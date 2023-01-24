class ObjetoEmprestimo < ApplicationRecord
  belongs_to :objeto
  belongs_to :emprestimo
end
