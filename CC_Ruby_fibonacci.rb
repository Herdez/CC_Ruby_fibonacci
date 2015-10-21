# Crear dos métodos que reciban un integer positivo n y regresen 
# fibonacci number, un método iterativo y un método recursivo.

def fibonacci_recursive(num)
	#Evaluate if num is '0' and '1'
	return 0 if num == 0
	return 1 if num == 1
	#Compute fibonacci
	fibonacci_recursive(num-1) + fibonacci_recursive(num-2) 
end

#Driver code
p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5


def fibonacci_iterative(num)
	#Evaluate if num is '0' and '1'
	return 0 if num == 0
	return 1 if num == 1
	#Initialize array 'fibo'
	fibo = []
	#Loop to generate numbers since '1' until 'num'
	for index in 1..num
		#Evaluate fibonacci's succession and introduce it to array 'fibo'
		if index == 1
			fibo[0] = 0
			fibo[1] = 1
	  else
			num1 = fibo[index - 1]
			num2 = fibo[index - 2]
			result = num1.to_i + num2.to_i
			fibo << result
		end
	end
	#Result, fibonacci's number
	fibo.max
end

#Driver code
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5