attendees =  ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(namesArr)
    badgeArr = []
    namesArr.each do |name|
        badgeArr << badge_maker(name)
    end
    badgeArr
end

def assign_rooms(array)
    roomArr = []
    array.each_with_index do |name, index|
        roomArr << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    roomArr
end

def printer(array)
    batch_badge_creator(array).each do |string|
        puts string
    end
    assign_rooms(array).each do |string|
        puts string
    end
end

puts printer(attendees)