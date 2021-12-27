class Usuario
    def initialize(nome, email, senha, telefone, endereco)
        @id = 0
        @nome = nome
        @email = email
        @senha = senha
        @telefone = telefone
        @endereco = endereco
    end

    def self.id()
        @id
    end
    def self.nome()
        @nome
    end
    def self.email()
        @email
    end
    def self.senha()
        @senha
    end
    def self.telefone()
        @telefone
    end
    def self.endereco()
        @endereco
    end

    def self.nome=(nome)
        @nome = nome
    end
    def self.email=(email)
        @email = email
    end
    def self.senha=(senha)
        @senha = senha
    end
    def self.telefone=(telefone)
        @telefone = telefone
    end
    def self.endereco=(endereco)
        @endereco = endereco
    end

    def printDados()
        puts "\n"
        puts "ID: #{@id}"
        puts "Nome: #{@nome}"
        puts "Email: #{@email}"
        puts "Telefone: #{@telefone}"
        puts "Endereço: #{@endereco}"
    end
    
end

def pegarInformacoesDoUsuario()
    
    puts "Digite seu nome: "
    nome = gets.chomp
    puts "Digite seu email: "
    email = gets.chomp
    puts "Digite sua senha: "
    senha = gets.chomp
    puts "Digite seu telefone: "
    telefone = gets.chomp
    puts "Digite seu endereço: "
    endereco = gets.chomp

    return {
        nome: nome,
        email: email,
        senha: senha,
        telefone: telefone,
        endereco: endereco
    }

end

def cadastrarUsuario(nome, email, senha, telefone, endereco)
    
    usuario = Usuario.new(nome, email, senha, telefone, endereco)

    puts "\nUsuário cadastrado com sucesso!"

    usuario.printDados()
    
end

def realizarAcaoCadastro()
    informacoes_usuario = pegarInformacoesDoUsuario()

    cadastrarUsuario(informacoes_usuario[:nome], informacoes_usuario[:email], informacoes_usuario[:senha], informacoes_usuario[:telefone], informacoes_usuario[:endereco])

    puts "\n Deseja cadastrar outro usuário? (S/N)"

    resposta = gets.chomp

    if resposta == "S" || resposta == "s"
        realizarAcaoCadastro()
    end
end

realizarAcaoCadastro()
