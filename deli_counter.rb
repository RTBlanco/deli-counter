# Write your code here.
require "pry"
katz_deli = []

def line(store_line)
    if store_line.size == 0
        puts "The line is currently empty."
    else 
        new_list = []
        store_line.each{|person| new_list.push("#{(store_line.index(person) + 1)}. #{person}")}
        puts "The line is currently: #{new_list.join(' ')}"
    end
end

def take_a_number(store_line, person)
    store_line.push(person)
    puts "Welcome, #{person}. You are number #{(store_line.index(person) + 1)} in line."
end

def now_serving(store_line)
    if store_line.size == 0 
        puts "There is nobody waiting to be served!"
    else
        cur_person = store_line.shift
        puts "Currently serving #{cur_person}."
    end
end 