require "open-uri"
require "nokogiri"

search_result = {}

base_url = "http://www.imdb.com"
url = "http://www.imdb.com/chart/top"

# 1. We get the HTML file thanks to open-uri
file = open(url)
#puts file

# 2. We build a Nokogiri document from this file
doc = Nokogiri::HTML(file)
#puts doc

movies_doc = doc.search('.titleColumn a')
#puts movies_doc

movies_doc[0..99].each do |movie_doc|

  # Creates a "movie" Hash object
  movie = { title: movie_doc.text }

  movie[:url] = base_url + movie_doc.attributes["href"].value

  movie_doc = Nokogiri::HTML(open(movie[:url]))

  movie[:release] = movie_doc.search('#titleYear').text.gsub('(', '').gsub(')', '')

  movie[:duration] = movie_doc.search('.title_wrapper').search('time').text.strip

  stars = movie_doc.search('.credit_summary_item')[2].search('a span').map { |star| star.text }

  movie[:stars] = "#{stars[0]}, #{stars[1]} and #{stars[2]}."

  movie_text =  "Title: #{movie[:title]}\n"
  movie_text += "Release date: #{movie[:release]}\n"
  movie_text += "Duration: #{movie[:duration]}\n"
  movie_text += "Stars: #{movie[:stars]}"

  filepath = "#{movie[:title].downcase.gsub(' ', '_')}.txt"

  File.open(filepath, 'w') do |file|
    file.write(movie_text)
  end

  puts "Successfully wrote#{filepath}"
end

