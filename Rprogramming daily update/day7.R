library(readr)
path <- "C:/Users/User/Desktop/diabetes.csv"
df <- read.csv(path)
View(df)

colnames(df)
ncol(df)
nrow(df)


#to get age greater than or equal to 50
# 1) call the column using $
# 2) then index it but give it a variable name and then view it

age_val <- df$Age >= 50
age_index <- df[age_val, ]
View(age_index)

# to view the total number of records >= 50 in a_val then use SUM
sum(age_val)

# to view the position records >= 50 in a_val then use WHICH; u can give the sum or
#which an alias like d_val <- which(age_val), then print(d_val) 

d_val <- which(age_val)
print(d_val)

# to view result in the dataframe use df and the index the variable
View(df[d_val, ])

# to create a function for solving age dependecy for diff ages using the calulation
#above
#!) give the function a variable name; age_dependency <- function
# 2) assign a variable(s) to the function itself; age_dependency <- function(age)
#then put formula
# lastly, call the name of the function and assign a value

 age_dependency <- function(age){
   a_val <- df$Age >=(age)
   age_index <- df[a_val, ]
   print(age_index)
 }

age_dependency(80)

# to create a function for solving two variables; age dependecy and outcomes, we use the & operator to join
#!) give the function a variable name; age_out <- function
# 2) assign a variable(s) to the function itself; age_dependency <- function(age,outcome)
#then put formula
# lastly, call the name of the function and assign d values

age_out <- function(age, outcome){
  age_out_val <- df$Age >= age & df$Outcome == outcome
  a_o_index <- df[age_out_val, ]
  print(a_o_index)
}

age_out(60, 0)

#cal the mean of DPF when outcome is == 1 and wen outcome == 0
# to create a function for solving mean of two variables; Diabetes Pedigree Function and outcomes, we use the mean function
#!) give the function a variable name; age_out <- function
# 2) assign a variable(s) to the function itself; age_dependency <- function(age,outcome)
#then put formula
# lastly, call the name of the function and assign d values

o.mean_val <- df$Outcome == 1
o.mean_val_index <- df[o.mean_val, ]
View(o.mean_val_index)
#then find mean DPF from the data-frame created in o.mean_val_index

dpf.mean <- mean(o.mean_val_index$DiabetesPedigreeFunction)
print(dpf.mean)


#now to make the above a function

mean_func <- function(outcome){
  o.mean_val <- df$Outcome == outcome
  o.mean_val_index <- df[o.mean_val, ]
  dpf.mean <- mean(o.mean_val_index$DiabetesPedigreeFunction)
  return(dpf.mean)
  print(paste(dpf.mean, "is the value for the mean of Diabetes Pedigree Function when outcome is ", o.mean_val, sep = " "))
}

zero_outcome <- mean_func(0)
print(zero_outcome)
one_outcome <- mean_func(1)
print(one_outcome)


#cal the mean of bloodpressure of each unique age; i.e mean of blood-pressure for all ages 32 without repeating 32
#in the df

unique_age.val <- unique(df$Age)
bp_mean <- c()
for (i in unique_age.val) {
  bp <- df$Age == i
  df_age <- df[bp, ]
  mean_bp <- mean(df$BloodPressure)
  bp_mean <- c(bp_mean, mean_bp)
  
}
print(bp_mean)

new_bp_mean <- data.frame(
  age_val = unique_age.val,
  mean_BP = bp_mean
  
)

print(new_bp_mean)

new_bp_mean <- data.frame(
  age_val = unique_age_val,
  mean_BP = bp_mean
)

print(new_bp_mean)

max_bp <- min(new_bp_mean$mean_BP)
a <- new_bp_mean$mean_BP == max_bp
new_bp_mean[a, ]



vals <- df$BloodPressure
bp_percent <- c()
for (i in vals){
  percent_bp <- round((i/ sum(df$BloodPressure))* 100, 3)
  bp_percent <- c(bp_percent, percent_bp)
}

data_percent <- data.frame(
  bloodpressure = vals,
  perecntage = bp_percent
)
print(data_percent)
View(data_percent)



