
library(stringi)

##import data
puzzle.02 <- read.csv("puzzle_02.csv",sep=" ") 

##rename columns
colnames(puzzle.02) = c("test","letter","password")

##prepare data, remove de : in letter; and separate the min and max.
puzzle.02$letter <- sub("*:", "", puzzle.02$letter)
puzzle.02$min <- read.table(text = puzzle.02$test, sep = "-", as.is = FALSE)$V1
puzzle.02$max <- read.table(text = puzzle.02$test, sep = "-", as.is = FALSE)$V2


## find number of time the char is in the string
puzzle.02$number.of.letter <- stringi::stri_count(puzzle.02$password, fixed = puzzle.02$letter)


puzzle.02$valid <- 0

## check if password
i=1
while (i<1000)
{
if((puzzle.02$number.of.letter[i] >= puzzle.02$min[i]) & (puzzle.02$number.of.letter[i] <= puzzle.02$max[i] )){
  puzzle.02$valid[i] <- 1
} 
  i=i+1
}

#number
sum(puzzle.02$valid)


## gold star 2

puzzle.02$pass1  <- substr(puzzle.02$password, puzzle.02$min, puzzle.02$min)  #string, first, last
puzzle.02$pass3  <- substr(puzzle.02$password, puzzle.02$max, puzzle.02$max)

puzzle.02$valid.2 <- 0

i=1
while (i<1000)
{
  if(((puzzle.02$letter[i] == puzzle.02$pass1[i])|(puzzle.02$letter[i] == puzzle.02$pass3[i])) & (puzzle.02$pass1[i] != puzzle.02$pass3[i])){
    puzzle.02$valid.2[i] <- 1
  } 
  i=i+1
}


sum(puzzle.02$valid.2)


