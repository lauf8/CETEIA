class Locador < ApplicationRecord
    has_many :emprestimos
    validates :nome,:telefone,:logradouro,:cidade, presence: true
    validates_email_format_of :email, tld: true
    validates_cpf_format_of :cpf
end
