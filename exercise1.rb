
train_schedule = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}

]

#1 Save the direction of train 111 into a variable.
puts train_schedule[7][:direction]

#2 Save the frequency of train 80B into a variable.
puts  train_schedule[5][:frequency_in_minutes]

#3 Save the direction of train 610 into a variable.
puts train_schedule[3] [:direction]

#4 Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.

north = []
#
train_schedule.each do |train|
    if train[:direction] == 'north'
      north.push(train)
      end
    end


puts north
#
#
# #5 Do the same thing for trains that travel east.
#
east = []

train_schedule.each do |train|
    if train[:direction] == 'east'
      east.push(train)
      end
    end
puts east


#6
def find_trains(direction, trains)
  results = []
 trains.each do |train|
   if train[:direction] == direction
     results.push(train)
   end
 end
  return results
end

  puts find_trains('east', train_schedule)
  puts find_trains('north', train_schedule)

  puts "-------------------------------------"

  train_schedule[0][:first_departure_time] = 12
  puts train_schedule
