#Começando o jogo
puts ''
print '''Olá! Meu nome é Emmy.
Adoro jogar jokenpô.
Vamos jogar? (Sim/Não) '''
iniciar = gets.chomp.downcase

#Fazendo com que o jogador escolha obrigatóriamente entre sim/nao
while iniciar != 'não' and iniciar != 'nao' and iniciar != 'sim' and iniciar != 'n' and iniciar != 's' do
    puts ''
    puts 'Desculpe, não entendi.'
    print 'O que isso significa? S/N '
    iniciar = gets.chomp.downcase
    tipo_int = iniciar.to_i
    tipo_float = iniciar.to_f
end

#loopin do jogo
while iniciar != 'n' and iniciar != 'não' and iniciar != 'nao' do
    
    #Opções e escolha aleatória da máquina
    escolha_pc = rand(0..2)
    
    #Escolha do jogador e opções
    puts ''
    print "Escolha uma das opções a seguir: " 
    print '''
 --------------
 PEDRA......[0]
 PAPEL......[1]
 TESOURA....[2]
 --------------
 Sua escolha: '''

    #Verificando se o jogador digitou algo diferente de 0, 1 e 2
    escolha_jogador = gets.to_i 
    while escolha_jogador != 0 and escolha_jogador != 1 and escolha_jogador != 2 do
        puts ''
        puts 'Desculpe, não entendi.'
        print 'Qual é a sua escolha? '
        escolha_jogador = gets.to_i
    end

    #Verificando o vencedor
    case escolha_pc 
        when 0
            case escolha_jogador
                when 0  
                    puts ''
                    puts "EMPATAMOS!"
                    puts "Escolhemos PEDRA"
                when 1
                    puts ''
                    puts "Você ganhou. PARABÉNS!"
                    puts "Eu escolhi PEDRA"
                    puts "E você escolheu PAPEL"
                else
                    puts ''
                    puts "Ooops! Você perdeu!"
                    puts "Eu escolhi PEDRA"
                    puts "E você escolheu TESOURA"
            end
        when 1
            case escolha_jogador
                when 0 
                    puts ''
                    puts "Ooops! Você perdeu!"
                    puts "Eu escolhi PAPEL"
                    puts "E você escolheu PEDRA"
                when 1
                    puts ''
                    puts "EMPATAMOS!"
                    puts "Escolhemos PAPEL"
                else
                    puts ''
                    puts "Você ganhou. PARABÉNS!"
                    puts "Eu escolhi PAPEL"
                    puts "E você escolheu TESOURA"
            end
        when 2
            case escolha_jogador
                when 0  
                    puts ''
                    puts "Você ganhou. PARABÉNS!"
                    puts"Eu escolhi TESOURA"
                    puts "E você escolheu PEDRA"
                when 1
                    puts ''
                    puts "Ooops! Você perdeu!"
                    puts "Eu escolhi TESOURA"
                    puts "E você escolheu PAPEL"
                else
                    puts ''
                    puts "EMPATAMOS!"
                    puts "Escolhemos TESOURA"
            end
    end   
    #Escolha se quer continuar
    puts ''
    print "Você quer continuar? (Sim/Não) " 
    iniciar = gets.chomp.downcase

    #Fazendo com que o jogador escolha obrigatóriamente entre sim/nao
    while iniciar != 'não' and iniciar != 'nao' and iniciar != 'sim' and iniciar != 'n' and iniciar != 's' do
        puts ''
        puts 'Desculpe, não entendi.'
        print 'O que isso significa? S/N '
        iniciar = gets.chomp.downcase
    end
end
#Despedida
puts ''
puts "Foi bom jogar com você. Até mais! :)"
