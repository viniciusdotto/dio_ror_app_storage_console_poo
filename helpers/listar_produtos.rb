require 'terminal-table'

def listar_produtos
  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
    ProdutoService.todos.each do |row|
      t.add_row([row.id, row.nome, row.descricao, row.preco, row.qtd])
    end
  end
  puts table

  mensagem(set_color('Digite enter para continuar', 'warning'), 0, false)
  gets
  limpar_tela
end