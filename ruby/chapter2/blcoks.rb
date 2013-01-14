def who_says_what
  yield("Sakuya", "I'm Alice Margatroid.")
  yield("Reimu", "I'm Reimu.")
end

who_says_what {|character, phrase| puts "#{character} says #{phrase}"}

animals = %w(ant bee cat dog emu)
animals.each {|animal| puts animal}
