require 'digest'

puts 'Введите слово или фразу для шифрования:'
str = STDIN.gets.chomp

puts
puts 'Выберите способ шифрования:'
puts '1. MD5'
puts '2. SHA1'
choice = STDIN.gets.chomp

result = if choice == 1
           Digest::MD5.hexdigest(str)
         else
           Digest::SHA1.hexdigest(str)
         end

puts
puts 'Вот что получилось:'
puts result