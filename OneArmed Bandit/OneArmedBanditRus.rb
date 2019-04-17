# Однорукий Бандит
# Copyright (c) 2019 Алексей Рознован
# Большинство прав защищено...

# Эта игра не преследует цель кого-то оскорбить, обидеть или унизить. Это всего лишь шутка :)
# 18+

greetings = [
	"Приветствую тебя, мой друг!",
	"О, мля! Какие люди!",
	"Привет. Надеюсь ты составил завещание...",
	"Привет, кусок мяса!"
]

puts greetings.sample

print "Хочешь поиграть? (Y - Да / N - Нет) "
answer = gets.strip.capitalize

if answer != "Y"
	puts "Зачем ты тратишь мое время, обезьяна?! Проваливай!"
	exit
end

print "А сколько тебе лет? "
age = gets.to_i

if age < 18
	puts "Ты ещё не созрел для таких игр, сынок!"
	exit
end

print "А сколько у тебя денег? "
money = gets.to_i

if money < 150
	puts "Не обижайся, братуха... но ты ссаный нищеброд!\nВозьми кредит, продай почку, займи...\nОдним словом - найди деньги. Тогда и поиграем!"
	exit
end

if answer == "Y" && age >= 18 && money >= 150
	puts "Ну что ж... Закидывай деньги и давай играть!"
	
	1000.times do

		puts "Нажми Enter, чтобы дернуть ручку!"
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
			puts "Твой баланс обнулен!\nПродай почку и играй вновь!\nУдача тебе обязательно улыбнется!"
			exit
		elsif x == 1 && y == 1 && z == 1
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 100 долларов!"
			money = money + 100
			puts "Осталось #{money} долларов"
		elsif x == 2 && y == 2 && z == 2
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 200 долларов!"
			money = money + 200
			puts "Осталось #{money} долларов"
		elsif x == 3 && y == 3 && z == 3
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 300 долларов!"
			money = money + 300
			puts "Осталось #{money} долларов"
		elsif x == 4 && y == 4 && z == 4
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 400 долларов!"
			money = money + 400
			puts "Осталось #{money} долларов"
		elsif x == 5 && y == 5 && z == 5
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 500 долларов!"
			money = money + 500
			puts "Осталось #{money} долларов"
		elsif x == 6 && y == 6 && z == 6
			puts "#{x}#{y}#{z}"
			puts "Ты только что просрал половину выигрыша!\nЧисло Зверя, знаешь ли, и всё такое..."
			money = money / 2
			puts "Осталось #{money} долларов"
		elsif x == 7 && y == 7 && z == 7
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 700 долларов!"
			money = money + 700
			puts "Осталось #{money} долларов"
		elsif x == 8 && y == 8 && z == 8
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 800 долларов!"
			money = money + 800
			puts "Осталось #{money} долларов"
		elsif x == 9 && y == 9 && z == 9
			puts "#{x}#{y}#{z}"
			puts "Тебе прилетело 900 долларов!"
			money = money + 900
			puts "Осталось #{money} долларов"
		elsif x == y || y == z || x == z
			puts "#{x}#{y}#{z}"
			puts "Двойное совпадение!\nТебе прилетело 10 долларов!"
			money = money + 10
			puts "Осталось #{money} долларов"
		else
			puts "#{x}#{y}#{z}"
			money = money - 10
			puts "Ни одного совпадения!\nТы проиграл 10 долларов!"
			puts "Осталось #{money} долларов"
		end

		if money == 0
			puts "Ты просрал все деньги..."
			banter = rand (1..3)
				if banter == 1
					puts "Покончить с собой можно в специальной комнате № 202.\nУслуги уборщицы - за счет заведения."
				elsif banter == 2
					puts "Ну чего ты так огорчился?!\nНекоторые парные органы в нашем организме прекрасно работают и в одиночку... смекаешь?\nВот телефон клиники в Мексике. До скорого!"
				elsif banter == 3
					puts "Неисповедимы пути Господни... Бог дал - Бог взял..."
				end
			puts "Следующий!!!"
			exit
		end

	end
end