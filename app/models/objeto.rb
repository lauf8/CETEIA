class Objeto < ApplicationRecord
    paginates_per 3
    has_many :objeto_emprestimos
    has_many :emprestimos, through: :objeto_emprestimos
end
