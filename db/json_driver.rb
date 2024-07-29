require_relative '../services/produto_service'

class JsonDriver
  def self.read
    db = 'db/produtos.json'
    File.open(db, 'w') { |file| file.write('[]') } unless File.exist?(db)
    db_data = File.read(db)

    db_json = JSON.parse(db_data)
    db_json.each do |item|
      ProdutoService.adicionar(Produto.new(
        {
          id: item["id"],
          nome: item["nome"],
          descricao: item["descricao"],
          preco: item["preco"],
          qtd: item["qtd"]
        }
      ))
    end
  end

  def self.write
    json_data = JSON.generate(ProdutoService.todos.map do |produto|
      {
        id: produto.id,
        nome: produto.nome,
        descricao: produto.descricao,
        preco: produto.preco,
        qtd: produto.qtd
      }
    end
    )
    file_path = 'db/produtos.json'
    File.open(file_path, 'w') do |file|
      file.write(json_data)
    end
  end
end