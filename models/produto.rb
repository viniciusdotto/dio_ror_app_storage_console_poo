class Produto
  def initialize(produto)
    self.id = produto[:id]
    self.id = Time.now.to_i if self.id.nil?
    self.nome = produto[:nome]
    self.preco = produto[:preco]
    self.descricao = produto[:descricao]
    self.qtd = produto[:qtd]
  end
  attr_accessor :id, :nome, :descricao, :preco, :qtd
end