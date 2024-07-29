class ProdutoService
  @@produtos = []

  def self.todos
    @@produtos
  end

  def self.adicionar(produto)
    @@produtos << produto
    JsonDriver.write
  end
end