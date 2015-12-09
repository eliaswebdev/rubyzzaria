require 'ffaker'

200.times do
	cliente = Cliente.create!(
		nome: FFaker::NameBR.name_with_prefix,
		email: FFaker::Internet.free_email,
		telefone: FFaker::PhoneNumberAU.home_work_phone_number,
		endereco: FFaker::AddressBR.city+' - '+FFaker::AddressBR.secondary_address,
	)
end