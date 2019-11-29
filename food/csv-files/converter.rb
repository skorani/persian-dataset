file = ARGV[0] 

f = File.open(file, "r:UTF-8") 

lines = [] 
processed_lines = [] 

f.each_line do |l| 
 lines.push(l) 
end 

for l in lines do 
 l = l.gsub("\t", ",")
 processed_lines.push(l)
end 

g = File.new("#{File.basename(file, '.txt')}.csv", "w:UTF-8") 

for l in processed_lines do 
 g.write(l)
end 

g.close 

puts "Every thing is done successfully!"

