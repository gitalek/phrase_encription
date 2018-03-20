# ввести число из диапазона (определяется параметром)
def user_choice(count)
  choice = STDIN.gets.strip
  return choice.to_i if choice.match?(/\d+$/) &&
                        (1..count).cover?(choice.to_i)

  puts 'Некорректное значение. Выберите правильный номер:'
  user_choice(count)
end
