# Essa é uma agenda para treinar os conhecimentos básicos em Ruby

@agenda = [
    {
        nome: "Marcos", tel: "983456789"
    },
    {
        nome: "Kalel", tel: "978934567"
    },
    {
        nome: "Douglas", tel: "987653421"
    },
    {
        nome: "Lucas", tel: "976542189"
    },
    {
        nome: "Antenor", tel: "985670912"
    },
    {
        nome: "Clara", tel: "974531286"
    },
    {
        nome: "Jenny", tel: "982345671"
    },
    {
        nome: "Olga", tel: "981234567"
    },
    {
        nome: "Samantha", tel: "987654321"
    }
]

def todos_contatos
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:tel]}"
    end
    puts "------------------------------------------"
end

def adc_contato
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp.to_i

    @agenda << {nome: nome, tel: telefone}
    puts "------------------------------------------"
end

def ver_contato
    print "Qual contato você deseja?"
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:tel]}"
        end
    end
    puts "------------------------------------------"

end

def edit_contato
    print "Qual contato você deseja editar?"
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
            print "Nome para editar (Para manter o mesmo nome, aperte enter): "
            nome_salvo = contato[:nome]

            contato[:nome] = gets.chomp 
            contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]

            print "Telefone para editar (Para manter o mesmo telefone, aperte enter): "
            tel_salvo = contato[:tel]

            contato[:tel] = gets.chomp
            contato[:tel] = contato[:tel].empty? ? tel_salvo : contato[:tel]
        end
    end
end

def remove_contato
    print "Qual contato você deseja remover? "
    nome = gets.chomp 

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
                    indice = @agenda.index(contato)
                    @agenda.delete_at(indice)
        end
    end
end

loop do
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato \n0. Sair"
         cod = gets.chomp.to_i

         case 
         when cod == 0 
            puts "Até Logo!"
            break
         when cod == 1
            todos_contatos
         when cod == 2
            adc_contato
         when cod == 3
            ver_contato
         when cod == 4
            edit_contato
         when cod == 5
            remove_contato   
         else
            puts "Essa função não existe!"
            puts "Digite uma função válida" 
         end
end