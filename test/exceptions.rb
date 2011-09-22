require 'open-uri'

tries = 0
begin
  tries += 1
  open('http://www.google.com/') { |f| puts f.readlines }
rescue OpenURI::HTTPError => e
  puts e.message
  if (tries < 4)
    sleep(2**tries)
    retry
  end
end

def method
  1 / 0
rescue => e
  puts "E: #{e}"
end

method
puts x = (7 / 0) rescue -90

