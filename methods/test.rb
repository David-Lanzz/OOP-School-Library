File.open('./data/file.json', 'w+') do |_file|
  puts File.exist?('file.json')
end
