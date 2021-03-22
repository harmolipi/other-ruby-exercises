# fname = "sample.txt"
# somefile = File.open(fname, "w")
# somefile.puts "Hello file!"
# somefile.close

# file = File.open("sample.txt", "r")
# contents = file.read
# puts contents

# contents = File.open("sample.txt", "r") { |file| file.read }
# puts contents

# file = File.open("sample.txt", 'r')
# i = 0
# while !file.eof?
#   line = file.readline
#   puts line
# end

require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
fname = "hamlet.txt"

hamlet_speaking = false

File.open("hamlet.txt", "r") do |file|
  file.readlines.each do |line

    if hamlet_speaking == true && ( line.match(/^  [A-Z]/) || line.strip.empty? )
      hamlet_speaking = false
    end

    hamlet_speaking = true if line.match("Ham\.")

    puts line if hamlet_speaking == true
  end
end