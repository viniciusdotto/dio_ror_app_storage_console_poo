require 'json'
require_relative 'display/menu'
require_relative 'display/operacoes_de_tela'
require_relative 'helpers/cadastro_produto'
require_relative 'helpers/listar_produtos'
require_relative 'helpers/excluir_produto'
require_relative 'models/produto'
require_relative 'db/json_driver'
require_relative 'services/produto_service'

JsonDriver.read
iniciar_menu