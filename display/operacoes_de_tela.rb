def mensagem(msg, timer = 5)
  limpar_tela
  puts msg
  sleep(timer)
  limpar_tela
end

def limpar_tela
  if Gem.win_platform?
    system('cls')
  else
    system('clear')
  end
end