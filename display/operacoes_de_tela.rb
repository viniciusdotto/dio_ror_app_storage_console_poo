def mensagem(msg, timer = 5, is_cleaning_screen = true)
  limpar_tela if is_cleaning_screen
  puts msg
  sleep(timer)
  limpar_tela if is_cleaning_screen
end

def limpar_tela
  if Gem.win_platform?
    system('cls')
  else
    system('clear')
  end
end

def set_color(msg, color)
  case color
  when 'ok_green'
    "\033[92m#{msg}\033[0m"
  when 'warning'
    "\033[93m#{msg}\033[0m"
  when 'fail'
    "\033[91m#{msg}\033[0m"
  end
end