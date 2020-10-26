
def jugada(player_1 ,player_2)
  if player_1=="Piedra" && player_2=="Tijera"||player_1=="Papel"&& player_2=="Piedra"||player_1=="Tijera"&& player_2=="Papel"
    puts "jugador 1 Gana y Jugador 2 Pierde"
  elsif player_1=="Piedra" && player_2=="Papel"||player_1=="Papel"&& player_2=="Tijera"||player_1=="Tijera"&& player_2=="Piedra"
    puts  "Jugador 2 Gana y Jugador 1 Pierde"
  elsif player_1==player_2
    puts " Empate"
  end
end


def imprimir_menu
  puts 'TURNO JUGADOR 1'
  print "\n"
  puts '1) Piedra'
  puts '2) Papel'
  puts '3) Tijera'
  puts '4) Salir'

end

def imprimir_menu2
  puts 'TURNO JUGADOR 2'
  print "\n"
  puts '1) Piedra'
  puts '2) Papel'
  puts '3) Tijera'
  puts '4) Salir'

end


imprimir_menu
player_1=gets.chomp
#validar Valor player_2
while player_1!="Piedra"&& player_1!="Papel" && player_1!="Tijera" && player_1!="Salir"
  puts "Argumento invalido : Ingrese Piedra , Papel ,Tijera o Salir"
  player_1=gets.chomp
end

if player_1=="Piedra"||player_1=="Papel"||player_1=="Tijera"

  imprimir_menu2
  player_2=gets.chomp
  #validar valor player_2
  while player_2!="Piedra"&& player_2!="Papel" && player_2!="Tijera" && player_2!="Salir"
    puts "Argumento invalido : Ingrese Piedra , Papel ,Tijera o Salir"
    player_2=gets.chomp
  end

  if player_2=="Piedra"||player_2=="Papel"||player_2=="Tijera"
    jugada(player_1 ,player_2)
    #salir_player 2
  elsif player_2=="Salir"

    puts  "Saliendo del juego"

  end

  #Salir player 1
elsif player_1=="Salir"

  puts  "Saliendo del juego"

end
