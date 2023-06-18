#code to randomise sampling sites over sampling days (in this case we have 5 sites over 5 days, but adapt to your experimental design
#corsica prac 2023 psingh

set.seed <- 24858                     # set seed to ensure the same random numbers are produced every time you run this code
s<- rep(1:5, each=1)                  # generate a vector of numbers that represent your sites. in this case i am generating a list of 5 sites
sample(s) # prints site order day1
sample(s) #  prints site order day2
sample(s) #  prints site order day3
sample(s) #  prints site order day4
sample(s) #  prints site order day5
