puz.01 <- paste0("C:\\Rdir\\Advent\\puzzle.01.csv")
puzzle.01 <- read.csv(puz.01,sep=";")  

colnames(puzzle.01) = "number"


#### Gold star 1 ####


i=1
while (i<201)
{
  j=1
  while (j<201)
  {
      som <- puzzle.01$number[i]+puzzle.01$number[j]
      if (som==2020){
        print(puzzle.01$number[i])
        print(puzzle.01$number[j])
       
        
        product = puzzle.01$number[i]*puzzle.01$number[j]
        
        print(product)
        
        i=j=202
    }
    j = j+1
  }
  i = i+1
}



#### Gold star 2 ####



i=1
while (i<201)
{
 j=1
  while (j<201)
  {
   h=1
    while (h<201)
    {
    som <- puzzle.01$number[i]+puzzle.01$number[j]+puzzle.01$number[h]
    if (som==2020){
      print(puzzle.01$number[i])
      print(puzzle.01$number[j])
      print(puzzle.01$number[h])
      
      product = puzzle.01$number[i]*puzzle.01$number[j]*puzzle.01$number[h]
      
      print(product)
      
      h=i=j=202
    }
    h=h+1
   }
  j = j+1
  }
i = i+1
}

