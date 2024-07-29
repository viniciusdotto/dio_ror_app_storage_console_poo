def iniciar_menu(produtos = [])
  loop do
    mensagem('===== Escolha uma das opções abaixo: =====', 0, false)
    mensagem('1 - Cadastro de produtos', 0, false)
    mensagem('2 - Lista de produtos', 0, false)
    mensagem('3 - Retirada do estoque', 0, false)
    mensagem('4 - Sair', 0, false)

    opcao = gets.to_i

    case opcao
    when 1
      limpar_tela
      mensagem('==== Cadastro de produtos ====', 1, false)
      cadastro_produto
    when 2
      limpar_tela
      mensagem('==== Lista de produtos ====', 1, false)
      listar_produtos
    when 3
      mensagem('==== Retirada do estoque ====', 1, false)
      retirada_estoque
    when 4
      limpar_tela
      exit
    else
      mensagem(set_color('Opção inválida', 'fail'), 3)
    end
  end
end