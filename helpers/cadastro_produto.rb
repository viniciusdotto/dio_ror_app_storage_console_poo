def cadastro_produto
  produto = {}

  mensagem('Insira o nome do produto', 0, false)
  produto[:nome] = gets.chomp

  mensagem('Insira a descrição do produto', 0, false)
  produto[:descricao] = gets.chomp

  mensagem('Insira o preço do produto', 0, false)
  produto[:preco] = gets.to_f

  mensagem('Insira a quantidade do produto', 0, false)
  produto[:qtd] = gets.to_i

  ProdutoService.adicionar(Produto.new(produto))

  mensagem(set_color("#{produto[:nome]} adicionado", 'ok_green'), 1)
end