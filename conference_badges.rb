# Write your code here.

def badge_maker(name1)
  custom_badge =  "Hello, my name is #{name1}."
  custom_badge
end

def batch_badge_creator(attendees)
  i = 0
  custom_welcome = []
  while i < attendees.size
    custom_welcome.push(badge_maker(attendees[i]))
    i+=1
  end
  custom_welcome
end

def assign_rooms(attendees)
  i = 0
  room_assignment = []
  while i < attendees.size
    room_assignment_welcome = "Hello, #{attendees[i]}! You'll be assigned to room " + (i+1).to_s + "!"
    room_assignment.push(room_assignment_welcome)
    i+=1
  end
  room_assignment
end

def printer(attendees)

  array1 = batch_badge_creator(attendees)
  array2 = assign_rooms(attendees)
  array1.each {|greeting| puts greeting}
  array2.each {|room| puts room}
end
