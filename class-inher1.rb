class Animal
	def run
		puts 'Running...'
	end
	def jump
		puts 'Jumping...'
	end
end

class Cat < Animal
	def say_meow
		puts 'Meeeeoooo!'
	end
end

class Dog < Animal
	def bark
		puts 'Woof-woof!!!'
	end
end

cat = Cat.new
cat.run
cat.say_meow

dog = Dog.new
dog.jump
dog.bark