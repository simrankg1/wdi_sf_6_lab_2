pages_with_questions = {}

key = ""

File.open("story.txt", "r") do |infile|
  while (line = infile.gets)
    if line.index("~p")
      key = line
      lines_grabbed = ""
    else
      lines_grabbed += line
    end
    pages_with_questions[key] = lines_grabbed
  end
end


p1 = pages_with_questions.select do |key,value|
	key.index("~p1")
end


p1.each do |k, v|
	puts v
end

puts pages_with_questions

puts "Enter 1 if your is to use Gordon Ramsey's recipe?"
puts "Enter 2 if it is to whip up your own thing?"
puts "Enter 3 if you want to call your friend for a recipe?"

choice= gets.chomp
newKey = "~p" + ((choice.to_i) +1).to_s  + "\n"

puts pages_with_questions








