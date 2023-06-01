File.open('file.json', 'w+') do |_file|
  puts File.empty?('file.json')
end
