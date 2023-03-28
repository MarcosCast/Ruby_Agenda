

@agenda = [
    {
        nome: "Marcos", tel: "123456789"
    },
    {
        nome: "Samuel", tel: "987654321"
    }
]

def todos_contatos
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:tel]}"
        puts "------------------------------------------"
    end
end

def adc_contato
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp.to_i

    @agenda << {nome: nome, tel: telefone}
end

def ver_contato

end

def edit_contato

end

def remove_contato

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

         end

            

end