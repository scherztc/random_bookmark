file = File.new('bookmark_url.lst', 'r')
file.close

File.open('bookmark_url.lst', 'r') do |file|  
contentsArray = [] 
while line = file.gets
#     puts "** " + line.chomp + " **"
     contentsArray.push line
end

#f = File.open('bookmark_url.lst', 'r') do |file| 
#File.each_line (|line| puts line)
#   contentsArray = []
#   f.each_line {|line|
#      contentArray.push line
#   }

puts contentsArray[rand(contentsArray.length)]

end




