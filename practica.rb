print 'Escribe una frase: '
frase = gets.chomp
print 'Ingresa un número: '
num = gets.chomp.to_i

num.times do
puts frase
end
