class Cliente < ActiveRecord::Base

	## VALIDATIONS

	validates :nome, :email, :telefone, :endereco, presence: true
	validates :email, uniqueness: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :nome, length: { minimum: 9 }
	validates :endereco, length: { minimum: 10, maximum: 80 }

	## SCOPES
	
	# busca simples
	def self.search(q)
		where("nome LIKE ?", "%#{q}%")
	end
end
