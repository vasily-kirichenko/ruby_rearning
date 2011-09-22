
$i = 0

def inner_loop
  loop do
    throw :big_data if ($i += 1) > 5
  end
end

catch :big_data do
  loop do
    inner_loop
  end
end

puts $i