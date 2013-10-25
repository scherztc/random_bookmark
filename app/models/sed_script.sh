sed -ne 's|.*\<A HREF="\(http[^"]*\)".*|\1|p' bookmarks.html > bookmark_url.lst 

irb --single-prompt
file = File.new('bookmark_url.lst', 'r')
file.gets
file.gets.chomp

file.read(4)
file.puts
file.close

ruby accessing_files.rb

