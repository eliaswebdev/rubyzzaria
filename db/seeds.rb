require 'ffaker'

200.times do
	cliente = Cliente.create!(
		nome: FFaker::NameBR.name_with_prefix,
		email: FFaker::Internet.free_email,
		telefone: FFaker::PhoneNumberAU.home_work_phone_number,
		endereco: FFaker::AddressBR.city+' - '+FFaker::AddressBR.secondary_address,
	)
end

categorias = Categoria.create!([
	{nome: "PIZZAS TRADICIONAIS", preco_media: 37, preco_grande: 42},
	{nome: "PIZZAS ESPECIAIS", preco_media: 40, preco_grande: 45},
	{nome: "PIZZAS NOBRES", preco_media: 43, preco_grande: 48},
	{nome: "PIZZAS DOCES", preco_media: 37, preco_grande: 42},
])

pizzas_tradicionais = Pizza.create!([
	{
		categoria_id: 1,
		sabor: '4 QUEIJOS',
		cobertura: 'Massa, molho, mussarela, provolone, parmesão, catupiry e orégano.',
		status: 1,
	},
	{
		categoria_id: 1,
		sabor: 'BACON',
		cobertura: 'Massa, molho, mussarela, bacon e orégano.',
		status: 1,
	},

	{
		categoria_id: 1,
		sabor: 'BAIANA',
		cobertura: 'Massa, molho, mussarela, calabresa moída, pimenta calabresa, ovos ralados, cebola e orégano.',
		status: 1,
	},

	{
		categoria_id: 1,
		sabor: 'BAMBINA',
		cobertura: 'Massa, molho, mussarela, Presunto, frango desfiado, milho, ervilhas e orégano.',
		status: 1,
	},

	{
		categoria_id: 2,
		sabor: 'BALACUBANA',
		cobertura: 'Massa, molho, mussarela, presunto, frango desfiado, mussarela, bacon, cebola e orégano.',
		status: 1,
	},

	{
		categoria_id: 2,
		sabor: 'CAIPIRA',
		cobertura: 'Massa, molho, mussarela, frango desfiado, milho verde e orégano.',
		status: 1,
	},

	{
		categoria_id: 2,
		sabor: 'CALABRESA',
		cobertura: 'Massa, molho, mussarela, calabresa, cebola e orégano.',
		status: 1,
	},

	{
		categoria_id: 2,
		sabor: 'FRANGO AO CATUPIRY',
		cobertura: 'Massa, molho, mussarela, frango desfiado, coberto com catupiry e orégano.',
		status: 1,
	},

	{
		categoria_id: 3,
		sabor: 'FRANGO AO CHEDDAR',
		cobertura: 'Massa, molho, mussarela, frango desfiado, coberto com cheddar e orégano.',
		status: 1,
	},

	{
		categoria_id: 3,
		sabor: 'FRANGO AO CREME',
		cobertura: 'Massa, molho, mussarela, frango desfiado, creme de leite, milho e orégano.',
		status: 1,
	},

	{
		categoria_id: 3,
		sabor: 'MARGHERITA',
		cobertura: 'Massa, molho, mussarela, tomate, manjericão, parmesão ralado e orégano.',
		status: 1,
	},

	{
		categoria_id: 3,
		sabor: 'MEXICANA',
		cobertura: 'Massa, molho, mussarela, presunto, bacon, cebola, azeitonas, cobertos com catupiry e orégano.',
		status: 1,
	},

	{
		categoria_id: 4,
		sabor: 'MUSSARELA',
		cobertura: 'Massa, molho, mussarela, azeitonas e orégano.',
		status: 1,
	},

	{
		categoria_id: 4,
		sabor: 'NAPOLITANA',
		cobertura: 'Massa, molho, mussarela, presunto, tomate e orégano.',
		status: 1,
	},

	{
		categoria_id: 4,
		sabor: 'PORTUGUESA',
		cobertura: 'Massa, molho, mussarela, presunto, calabresa, ovo cozido, pimentão, cebola e orégano.',
		status: 1,
	},

	{
		categoria_id: 4,
		sabor: 'SICILIANA',
		cobertura: 'Massa, molho, mussarela, presunto, calabresa, bacon e orégano.',
		status: 1,
	},
])