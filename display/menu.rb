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
      produtos = cadastro_produto(produtos)
    when 2
      limpar_tela
      mensagem('==== Lista de produtos ====', 1, false)
      listar_produtos(produtos)
    when 3
      mensagem(set_color('Retirada do estoque', 'warning'))
    when 4
      limpar_tela
      exit
    else
      mensagem('Opção inválida')
    end
  end
end