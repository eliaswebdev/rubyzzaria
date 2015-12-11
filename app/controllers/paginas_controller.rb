class PaginasController < ApplicationController
  def principal
  end

  def cardapio
  	@categorias = Categoria.all
  end
end
