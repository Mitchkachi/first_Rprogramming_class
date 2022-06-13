# EXERCISES 3.8

#1) GENERATE AND PRINT 50 RANDOM INTERGERS EACH BETWEEN 3 AND 6

valz <- sample(3:6, 50, replace = T)
print(valz)

#2) GENERATE AND PRINT a RANDOM number (x) between 1 and 50, a RANDOM number (y) between 2 and 5 and compute x**y

x <- sample(1:50, 1)
print(x)

y <- sample(2:5, 1)
print(y)

z <- (x**y)
print(z)

#3) GENERATE AND PRINT a RANDOM number between 1 and 10 that prints your name that many times

name_val <- "mitch"
value <- sample(1:10, 1)
for (i in 1:value) {
  print(name_val)
}

#4) GENERATE AND PRINT a RANDOM decimal number between 1 and 10 with two decimal place of accuracy

g <- runif(1, 1, 10)
r <- round(g, 2)
print(r)


#5) GENERATE AND PRINT 50 random numbers such that the first between 1 and 2,
# the second is between 1 and 3,
# the third is between 1 and 4...,
#and the last is eventually between 1 and 51

range_num <- 1:50
for (i in range_num) {
  s <- sample(1:i+1, 1, replace = F)
  print(s)
}


#6) write a program that asks the user to enter two numbers, x and y, and computes |x-y|/x+y
x <- as.numeric(readline(prompt = "enter first numer: "))
y <- as.numeric(readline(prompt = "enter second number: "))
z <- x - y
o <- x + y
if(z < 0){
  a <- z * -1
}
 print(a/o)


# 7)



#8)
 
 time_val <- as.numeric(readline(prompt = "enter time in seconds: "))
  min <- floor(time_val / 60)
  seconds <- time_val %% 60
  print(paste(min, "minutes", seconds, "seconds", sep = " "))
  
  
  
# 9) 
  present_hour <- as.numeric(readline(prompt = "enter present hour: "))
  future_hour <- as.numeric(readline(prompt = " enter future hour: "))
  a <- present_hour + future_hour
  future_time <- a %% 12
  print(paste(future_time, "O'clock", sep = " "))

  
# 10)  
                                      #(i)
  
  power <- as.numeric(readline(prompt = "enter a power: "))
  digits <- 2 ** power
  last_digits <- digits %% 10
  print(last_digits)

                                       #(ii)
  
  power <- as.numeric(readline(prompt = "enter a power: "))
  digits <- 2 ** power
  last_digits <- digits %% 100
  print(last_digits)

                                       #(iii) 
  
  power <- as.numeric(readline(prompt = "enter a power: "))
  num_digits <- as.numeric(readline(prompt = "enter as many digits: "))
  digits <- 2 ** power
  last_digits <- digits %%(10 ** num_digits)
  print(last_digits)
 
# 11) write a program that asks the user to enter weight in kilograms, then convert it to pounds, round the 
  #answer to the nearest tenth of a pound  
  
weight_val <- as.numeric(readline(prompt = "enter weight value: "))
pound_weight_val <- weight_val * 2.205
r <- round(pound_weight_val,1)
print(paste(r, "pounds"))



# 12) write a program that asks the user for a number and prints out the factorial of the number

number_val <- as.numeric(readline(prompt = "enter a number: "))
fact <- 1
  for (i in 1:number_val) {
    fact <- fact * i
}
print(fact)

# 13) write a program that asks the user for a number and prints out the sine, cosine and tangent of that number

val_num <- as.numeric(readline(prompt = "enter a number: "))
for (i in val_num) {
  a <- sin(i)
  b <- cos(i)
  c <- tan(i)
  print(paste(a, "sine", sep = " "))
  print(paste(b, "cosine", sep = " "))
  print(paste(c, "tan", sep = " "))
}


# 14) write a program that asks the user to enter an angle in degrees and prints out the sine of the angle

degree_num <- as.numeric(readline(prompt = "enter an angle in degrees: "))
for (i in degree_num) {
  d <- sin(i)
  print(d)
}


#CHAPTER 4.5

#1)  

length_val <- as.numeric(readline(prompt = "enter length in cm: "))

if(length_val < 0){
  print(paste("Invalid Entry"))
  
}else{
  per_inch <- 2.54
  inch <- length_val * per_inch
  print(paste(inch, "inches"))
}


#2)

temp <- as.numeric(readline(prompt = "enter temperature value: "))
unit <- tolower(readline(prompt = "enter unit of temperature (c/f): "))

if (unit == "c") {
  f <- (9/5)* temp + 32
  print(paste("temperature in degree fahrenheit is", f, "degree fahrenheit", sep = " "))
  
}else{
  c <- (5/9)* temp - 32
  print(paste("temperature in degree celsius is", c, "degree celsius", sep = " "))
}


#3)

tempp <- as.numeric(readline(prompt = "enter temperature in celsius: "))

if (tempp < -273.15){
  print(paste("Temperature is invalid because it is below absolute zero"))
  
}else if(tempp == -273.15){
  print(paste("Temperature is absolute zero"))
  
}else if(tempp > -273.15 && tempp < 0){
  print(paste("Temperature is below freezing point"))
  
}else if(tempp == 0){
  print(paste("Temperature is at freezing point"))
  
}else if(tempp > 0 && tempp < 100){
  print(paste("Temperature is in the normal range"))
  
}else if(tempp == 100){
  print(paste("Temperature is at boiling point"))
  
}else{
  print(paste("Temperature is above boiling point"))
}


# 4) 
credits <- as.numeric(readline(prompt = "enter credits taken: "))
if( credits <= 23){
  print(paste("The student is a freshman"))
  
}else if( credits > 24 && credits < 53){
  print(paste("Student is a sophomore"))
  
}else if( credits >= 54 && credits <= 83){
  print(paste("Juniors"))
  
}else{
  print(paste("Seniors"))
}

# 5)
div_num <- as.numeric(readline(prompt = "enter a number: "))
sum_i <- 0
for (i in 1:div_num) {
  if(div_num %% i == 0){
    sum_i <- sum_i + i
  }
  
}
print(sum_i)

# 6)
user_response <- 1:10000
perfect_numbers <- c()
for (j in user_response){
  index <- j
  i <- 1
  sum_divisors <- 0
  while (i < index) {
    if(index %% i == 0){
      sum_divisors <- sum_divisors + i
    }
    i = i + 1
  }
  if(sum_divisors == index){
    perfect_numbers <- c(perfect_numbers, index)
  }
}
print(perfect_numbers)



# 7)
user_response <- as.numeric(readline(prompt = "Enter value: "))
divisors <- c()
perf <- c()
for (i in 1:user_response){
  if (user_response %% i == 0){
    divisors <- c(divisors, i)
  }
}
for (k in divisors){
  n <- k
  j <- 1
  while (j < n) {
    if (n / j == j){
      perf <- c(perf, n)
    }
    j <- j + 1
  }
}
if(length(perf) == 0){
  print(paste(user_response, "is squarefree", sep = " "))
} else {
  print(paste(user_response, "is not squarefree", sep = " "))
}



# 8)
x <- as.numeric(readline(prompt = "Enter value: "))
y <- as.numeric(readline(prompt = "Enter value: "))
z <- as.numeric(readline(prompt = "Enter value: "))

replacer <- x

x <- y
y <- z
z <- replacer

print(x)
print(y)
print(z)



# 9)
perfect_squares <- 0
perfect_cubes <- 0
perfect_fifth <- 0

for (i in 1:1000){
  square_root <- floor(i ** (1/2))
  cube_root <- ceiling(i ** (1/3))
  fifth_root <- floor(i ** (1/5))
  
  if (square_root ** 2 != i){
    perfect_squares <- perfect_squares + 1
  }
  
  if (cube_root ** 3 != i){
    perfect_cubes <- perfect_cubes + 1
  }
  
  if (fifth_root ** 5 != i){
    perfect_fifth <- perfect_fifth + 1
  }
}
print(paste("Not perfect squares are: ", perfect_squares, 
            ", Not perfect cubes are: ", perfect_cubes, 
            ", Not perfect fifth are: ", perfect_fifth, 
            sep = ""))



# 10)
scores_vector <- c()
for (i in 1:10){
  user_response <- as.numeric(readline(prompt = "Enter values: "))
  scores_vector <- c(scores_vector, user_response)
}

# i)
min_val <- scores_vector[1]
for (i in scores_vector){
  if (i < min_val){
    min_val <- i
  }
}
max_val <- scores_vector[1]
for (i in scores_vector){
  if (i > max_val){
    max_val <- i
  }
}
max_min_score <- c(min_val, max_val)
print(max_min_score)


# ii)
sum_scores <- 0
for(i in scores_vector){
  sum_scores <- sum_scores + i
}
length_scores <- length(scores_vector)
average_score <- sum_scores / length_scores
print(average_score)


# iii)
sort_scores <- sort(scores_vector)
second_highest <- sort_scores[which.max(sort_scores) - 1]
print(second_highest)
#sort is a function used to arrange vectors in their order of magnitude.

# iv)
for (score in scores_vector) {
  if(score > 100){
    print("There is a value greater than 100")
  }
}


# v)
new_scores <- c()
for (i in sort_scores){
  if (i != sort_scores[which.min(sort_scores)] & i != sort_scores[which.min(sort_scores) + 1]){
    new_scores <- c(new_scores, i)
  }
}

sum_new_scores <- 0
for(i in new_scores){
  sum_new_scores <- sum_new_scores + i
}
length_new_scores <- length(new_scores)
average_new_scores <- sum_new_scores / length_new_scores
print(average_new_scores)

d <- c(5, 6, 8, 9, 12, 15)
for (i in d){
  fact_vec <- c()
  fact <- 1
  for (j in 1:i){
    fact <- fact * j
    fact_vec <- c(fact_vec, fact)
  }
  print(fact)
}

fact <- 1
for (i in 1:user_response){
  fact <- fact * i
}
print(fact)


