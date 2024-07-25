def cadastro_produto(produtos)
  produto = {}

  mensagem('Insira o nome do produto', 0, false)
  produto[:nome] = gets.chomp

  mensagem('Insira a descrição do produto', 0, false)
  produto[:descricao] = gets.chomp

  mensagem('Insira o preço do produto', 0, false)
  produto[:preco] = gets.to_f

  mensagem('Insira a quantidade do produto', 0, false)
  produto[:qtd] = gets.to_i

  produto[:id] = Time.now.to_i

  produtos << produto

  mensagem(set_color("#{produto[:nome]} adicionado", 'ok_green'), 1)
  produtos
end