def greetings(arr, hsh)
  name = arr.join(' ')
  title = hsh[:title]
  occupation = hsh[:occupation]

  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })