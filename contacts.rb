#!/usr/bin/env ruby
require 'pstore'
data = PStore.new("contacts.pstore")
run = true

while(run) do

	puts "To add a new contact type 1\n
To retrieve a contacts birthday type 2 \n
To list all contacts type 3 \n
exit 4 \n"
	option = gets.chomp.to_i
	if option == 1 
		puts "What is your full name?"
		name = gets.chomp
		puts "What is your date of birth?"
		dob = gets.chomp


		data.transaction do
			data[name] = dob
			data.commit
		end
	
	elsif option == 2
		puts "please enter the name of the person whose birthday you're looking for"
		
		data.transaction do
			fullname = gets.chomp
			puts data[fullname]
			data.commit
		end 

	elsif option == 3
		data.transaction do

		data.roots.each {|birthday| puts "Name: #{name} Birthday: #{birthday}"}


		#.each {|birthday| puts "Name: #{name} Birthday: #{birthday}"}

	end

	elsif option == 4
		run = false
	else 
		puts "Sorry, please enter your option again"
	end
		
end
