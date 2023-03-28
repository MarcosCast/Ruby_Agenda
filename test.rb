

@agenda = [
    {
        nome: "Marcos", telefone: "123456789"
    },
    {
        nome: "Samuel", telefone: "987654321"
    }
]


loop do
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato \n0. Sair"
         cod = gets.chomp.to_i

         case 
         when cod == 0 
            puts "Até Logo!"
            break
         end

            

end