def tag(tag_name, content, attributes = {})
html_attributes = {}

  attributes.each do |key, value|
    html_attributes << “#{key}=¥”#{value}¥””
  end
  return ”<#{tag_name} #{html_attributes}>#{content}</#{tag_name}>""
end


puts tag("h1", "Hello world")
puts tag("h1", "Hello world", { class: "bold" })
puts tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
