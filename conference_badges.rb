def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badge_messages = []
  array.each do |index|
    badge_messages.unshift(badge_maker(index))
  end
  badge_messages.reverse
end

def assign_rooms(speaker_list)
  room_list = []
  speaker_list.each_with_index { |speaker, room_number|
    room_list.unshift("Hello, #{speaker}! You'll be assigned to room #{room_number + 1}!")
  }
  room_list.reverse
end

def printer(attendees)
  attendees.each do |attendee|
    puts batch_badge_creator(attendee)
    puts assign_rooms(attendee)
  end
end