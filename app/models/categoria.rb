class Categoria < ActiveRecord::Base
	## RELACIONAMENTOS
	has_many :pizzas

	## VALIDATIONS
	validates :nome, :preco_media, :preco_grande, presence: true
end
