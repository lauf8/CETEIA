class Objeto < ApplicationRecord
    has_many :emprestimos
    paginates_per 3
end
