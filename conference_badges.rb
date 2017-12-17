def badge_maker(name) #return a formatted badge
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers) #return a list of badge messages
  messages = []
  speakers.each do |name|
    messages.push(badge_maker(name))
  end
  messages
end

def assign_rooms(speakers) #return a list of welcome messages and room assignments
  speakers.map.with_index do |person, index|
    "Hello, #{person}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(speakers) #puts the list of badges and room_assignments
  badges = batch_badge_creator(speakers)
  rooms = assign_rooms(speakers)

  badges.each do |message|
    puts message
  end

  rooms.each do |room|
    puts room
  end
end
