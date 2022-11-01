def Top3Words(text)
  words_rating = {}
  words = text.split

  words.each do |w|
    w.gsub!(/[^A-Za-z0-9\-]/, "")
    w.downcase!

    if(words_rating.key?(w))
      words_rating[w] = words_rating[w] + 1
    else
      words_rating[w] = 1
    end
  end

  res = (words_rating.sort_by { |word, uses| -uses }).first(3)

  res
end



input_data = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

# input_data = "What is amazing is what this song is actually about. Its about celebrating the cleaners, its about bar tenders,
# coat checks etc. Wonderful point of view, and it's an absolutely fabulous song. and I haven't heard anyone roll the
# R's so beautifully since George Brassins! He's just epic in every way! "

# puts "Enter your text"
# input_data = gets.strip


puts Top3Words(input_data)