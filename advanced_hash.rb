require 'pry'
#Lets check out some more advanced uses of hashes

# we can actually have a hash as a hash value!

person = {
	name: {
		first: 'Bob',
		last: 'Smith'
	},
	pets: {
		dog: 'Charlie',
		cat: 'Pepper',
		goldfish: '2chainz'
	},
	age: 24,
	married: true,
}

# if we wanted to access this person's first name, how might we do so?


# we can even have arrays as hash values!

Amir = {
	name: {
		first: 'Amir',
		last: 'Jacobs'
	},
	grades: [92, 82, 91, 96, 85, 91],
	age: 19,
	family: {
		size: 6,
		members: ['Mike', 'Sarah', 'Siobhan']
	}
}

Sally = {
	name: {
		first: 'Sally',
		last: 'Smith'
	},
	grades: [92, 99, 91, 96, 100, 91],
	age: 19,
	family: {
		size: 3,
		members: ['Joe', 'Aimee', 'Barack']
	}
}

students = [Amir, Sally]
# grades = student[:grades]
def get_grades(students)
	all_grades = []
	
	students.each do |student|
		all_grades << student[:grades]
	end
	return all_grades.flatten.sort
end

def avg(numbers)
	sum = 0
	numbers.each do |number|
		sum += number.to_f
	end
	sum/numbers.length
end

total_grades = get_grades(students)
average = avg(total_grades)

binding.pry

#how would we get the student's third grade?
#to put all the grades together into a single array rather than two arrays 
# inside one array called all_grades, use array.flatten 

#how would we get the second member of this person's family?












