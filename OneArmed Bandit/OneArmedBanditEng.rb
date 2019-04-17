# One-armed Bandit
# Copyright (c) 2019 Aleksei Roznovan
# Most rights reserved...

# This game does not aim to offend or humiliate someone. This is just a joke :)
# 18+

greetings = [
	"Greetings my friend!",
	"Oh fuck! What people!",
	"Hey. I hope you made a will ...",
	"Hi, a piece of meat!"
]

puts greetings.sample

print "Do you want to play? (Y - Yes / N - No) "
answer = gets.strip.capitalize

if answer != "Y"
	puts "Why are you wasting my time, monkey?! Get out!"
	exit
end

print "And how old are you? "
age = gets.to_i

if age < 18
	puts "You are not ripe for such games, son!"
	exit
end

print "How much money do you have? "
money = gets.to_i

if money < 150
	puts "No offense, bro ... but you are a beggar!\nTake a loan, sell a kidney, borrow ...\nIn a word - find the money. Then let's play!"
	exit
end

if answer == "Y" && age >= 18 && money >= 150
	puts "Well ... Throw money and let's play!"
	
	1000.times do

		puts "Press Enter to pull the handle!"
		gets
		
		x = rand(0..9)
		y = rand(0..9)
		z = rand(0..9)
		
		10.times do |xx|

			counter = rand(0..9)

			xx < 9
	
			print counter
			print "\r"        		
			sleep 0.09
		end
		
		10.times do |yy|

			print x
			counter = rand(0..9)
	
			yy < 9
			
			print counter
			print "\r"
			sleep 0.09
		end

		10.times do |zz|

			print "#{x}#{y}"
			counter = rand(0..9)
	
			zz < 9
	
			print counter
			print "\r" 		
			sleep 0.09
		end

		if x == 0 && y == 0 && z == 0
			puts "#{x}#{y}#{z}"
			money = 0
			puts "Your balance is reset!\nSell a kidney and play again!\nGood luck to you will smile!"
			exit
		elsif x == 1 && y == 1 && z == 1
			puts "#{x}#{y}#{z}"
			puts "You won 100 dollars!"
			money = money + 100
			puts "Left #{money} dollars!"
		elsif x == 2 && y == 2 && z == 2
			puts "#{x}#{y}#{z}"
			puts "You won 200 dollars!"
			money = money + 200
			puts "Left #{money} dollars!"
		elsif x == 3 && y == 3 && z == 3
			puts "#{x}#{y}#{z}"
			puts "You won 300 dollars!"
			money = money + 300
			puts "Left #{money} dollars!"
		elsif x == 4 && y == 4 && z == 4
			puts "#{x}#{y}#{z}"
			puts "You won 400 dollars!"
			money = money + 400
			puts "Left #{money} dollars!"
		elsif x == 5 && y == 5 && z == 5
			puts "#{x}#{y}#{z}"
			puts "You won 500 dollars!"
			money = money + 500
			puts "Left #{money} dollars!"
		elsif x == 6 && y == 6 && z == 6
			puts "#{x}#{y}#{z}"
			puts "You just lost half your winnings!\nThe number of the Beast... you understand..."
			money = money / 2
			puts "Left #{money} dollars!"
		elsif x == 7 && y == 7 && z == 7
			puts "#{x}#{y}#{z}"
			puts "You won 700 dollars!"
			money = money + 700
			puts "Left #{money} dollars!"
		elsif x == 8 && y == 8 && z == 8
			puts "#{x}#{y}#{z}"
			puts "You won 800 dollars!"
			money = money + 800
			puts "Left #{money} dollars!"
		elsif x == 9 && y == 9 && z == 9
			puts "#{x}#{y}#{z}"
			puts "You won 900 dollars!"
			money = money + 900
			puts "Left #{money} dollars!"
		elsif x == y || y == z || x == z
			puts "#{x}#{y}#{z}"
			puts "Double coincidence!\nYou won 10 dollars!"
			money = money + 10
			puts "Left #{money} dollars!"
		else
			puts "#{x}#{y}#{z}"
			money = money - 10
			puts "No coincidence!\nYou lost 10 dollars!"
			puts "Left #{money} dollars!"
		end

		if money == 0
			puts "You lost all the money ..."
			banter = rand (1..3)
				if banter == 1
					puts "You can kill yourself in a special room number 202.\nCleaning services - at the expense of the institution."
				elsif banter == 2
					puts "Well, why are you so upset?!\nSome paired organs in our body work perfectly and alone ... do you know?\nHere is the phone clinic in Mexico. See you later!"
				elsif banter == 3
					puts "God works in mysterious ways... God gave - God took ..."
				end
			puts "Neeeeext!!!"
			exit
		end

	end
end