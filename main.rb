require 'digest'
require_relative 'methods'

puts 'Введите слово или фразу для шифрования:'
str = STDIN.gets.chomp

variants = %w[MD5 SHA1 SHA2]
puts
puts 'Выберите способ шифрования:'
variants.each_with_index { |e, i| puts "#{i + 1}. #{e}" }

choice = user_choice(variants.count)

result = if choice == 1
           Digest::MD5.hexdigest(str)
         elsif choice == 2
           Digest::SHA1.hexdigest(str)
         else
           Digest::SHA2.hexdigest(str)
         end

puts
puts 'Вот что получилось:'
puts result