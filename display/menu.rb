def iniciar_menu
  loop do
    mensagem_amarelo("===== Escolha uma das opções abaixo: =====", false, false)
    mensagem_azul("#{vermelho(1)} - Cadastro de Produtos", false, false)
    mensagem_azul("#{vermelho(2)} - Lista de Produtos", false, false)
    mensagem_azul("#{vermelho(3)} - Retirada de Produtos", false, false)
    mensagem_azul("#{vermelho(4)} - Sair", false, false)

    opcao = gets.to_i
    case opcao
    when 1
      cadastrar_produto
    when 2
      listar_produto
    when 3
      retirar_estoque
    when 4
      limpar_tela
      exit
    else
      puts "Opcao invalida"
    end
  end
end
