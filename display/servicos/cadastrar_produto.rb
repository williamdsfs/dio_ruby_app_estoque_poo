def cadastrar_produto
  mensagem("Iniciando cadastro de produtos...", true, true, 1.5)

  mensagem_azul("Digite o nome do produto: ", false, false)
  nome = gets.chomp
  limpar_tela

  mensagem_azul("Digite a descrição do produto #{verde(nome)}:", false, false)
  descricao = gets.chomp
  limpar_tela

  mensagem_azul("Digite o preco do produto #{verde(nome)}:", false, false)
  preco = gets.to_f
  limpar_tela

  mensagem_azul("Digite a quantidade em estoque do produto #{verde(nome)}:", false, false)
  quantidade_estoque = gets.to_i
  limpar_tela

  p = Produto.new ({
    "id" => Time.now.to_i,
    "nome" => nome,
    "descricao" => descricao,
    "preco" => preco,
    "quantidade" => quantidade_estoque
  })

  ProdutoServico.new(JsonRepositorio, "db/produtos.json").adicionar(p)

  mensagem("O #{amarelo(nome)} foi cadastrado com sucesso!", true, true, 3)
end
