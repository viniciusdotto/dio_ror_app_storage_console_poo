def iniciar_menu()
  loop do
    puts 'Escolha uma das opções abaixo:'
    puts '1 - Cadastro de produtos'
    puts '2 - Lista de produtos'
    puts '3 - Retirada do estoque'
    puts '4 - Sair'

    opcao = gets.to_i

    case opcao
    when 1
      puts 'Cadastro de produtos'
    when 2
      puts 'Lista de produtos'
    when 3
      puts 'Retirada do estoque'
    when 4
      exit
    else
      puts 'Opção inválida'
    end
  end
end