require_relative "display/menu.rb"
require_relative "display/operacoes_de_tela"
require_relative "display/servicos/cadastrar_produto"
require_relative "display/servicos/listar_produto"
require_relative "display/servicos/retirar_estoque"
require_relative "dominio/entidades/produto"
require_relative "dominio/servicos/produto_servico"
require_relative "infraestrutura/json_repositorio"
require_relative "infraestrutura/csv_repositorio"

iniciar_menu
