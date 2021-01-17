dataset<- read_xlsx('Dummy.xlsx')

# for PaleoLatBin division based on the criteria
for (i in 1:dim(dataset)[1])
{
   if(dataset$paleolat[i]>=-90 &&  dataset$paleolat[i]<=-60.01)
  {
     dataset$LatBin[i] = 1
  }
  else if(dataset$paleolat[i]>=-60 &&  dataset$paleolat[i]<=-23.01)
  {
    dataset$LatBin[i] = 2
  }
  else if(dataset$paleolat[i]>=-23 &&  dataset$paleolat[i]<=0)
  {
    dataset$LatBin[i] = 3
  }
  else if(dataset$paleolat[i]>=0.01 &&  dataset$paleolat[i]<=23)
  {
    dataset$LatBin[i] = 4
  }
  else if(dataset$paleolat[i]>=23.01 &&  dataset$paleolat[i]<=60)
  {
    dataset$LatBin[i] = 5
  }
  else if(dataset$paleolat[i]>=60.01 &&  dataset$paleolat[i]<=90)
  {
    dataset$LatBin[i] = 6
  }
  else
  {
    dataset$LatBin[i] = " "
  }
}

# for time Bin division based on the criteria
for (i in 1:dim(dataset)[1])
{
  if(dataset$min_ma[i]>=530 && dataset$min_ma[i]<=541)
    dataset$TimeBin[i] = 1
else if(dataset$min_ma[i]>=519 && dataset$min_ma[i]<=529.9)
  dataset$TimeBin[i] = 2
else if(dataset$min_ma[i]>=508 && dataset$min_ma[i]<=518.9)
  dataset$TimeBin[i] = 3
else if(dataset$min_ma[i]>=497 && dataset$min_ma[i]<=507.9)
  dataset$TimeBin[i] = 4
else if(dataset$min_ma[i]>=486 && dataset$min_ma[i]<=496.9)
  dataset$TimeBin[i] = 5
else if(dataset$min_ma[i]>=475 && dataset$min_ma[i]<=485.9)
  dataset$TimeBin[i] = 6
else if(dataset$min_ma[i]>=464 && dataset$min_ma[i]<=474.9)
  dataset$TimeBin[i] = 7
else if(dataset$min_ma[i]>=453 && dataset$min_ma[i]<=463.9)
  dataset$TimeBin[i] = 8
else if(dataset$min_ma[i]>=442 && dataset$min_ma[i]<=452.9)
  dataset$TimeBin[i] = 9
else if(dataset$min_ma[i]>=431 && dataset$min_ma[i]<=441.9)
  dataset$TimeBin[i] = 10
else if(dataset$min_ma[i]>=420 && dataset$min_ma[i]<=430.9)
  dataset$TimeBin[i] = 11
else if(dataset$min_ma[i]>=409 && dataset$min_ma[i]<=419.9) 
  dataset$TimeBin[i] = 12
else if(dataset$min_ma[i]>=398 && dataset$min_ma[i]<=408.9)
  dataset$TimeBin[i] = 13
else if(dataset$min_ma[i]>=387 && dataset$min_ma[i]<=397.9)
  dataset$TimeBin[i] = 14
else if(dataset$min_ma[i]>=376 && dataset$min_ma[i]<=386.9)
  dataset$TimeBin[i] = 15
else if(dataset$min_ma[i]>=365 && dataset$min_ma[i]<=375.9)
  dataset$TimeBin[i] = 16
else if(dataset$min_ma[i]>=354 && dataset$min_ma[i]<=364.9)
  dataset$TimeBin[i] = 17
else if(dataset$min_ma[i]>=343 && dataset$min_ma[i]<=353.9)
  dataset$TimeBin[i] = 18
else if(dataset$min_ma[i]>=332 && dataset$min_ma[i]<=342.9)
  dataset$TimeBin[i] = 19
else if(dataset$min_ma[i]>=321 && dataset$min_ma[i]<=331.9)
  dataset$TimeBin[i] = 20
else if(dataset$min_ma[i]>=310 && dataset$min_ma[i]<=320.9)
  dataset$TimeBin[i] = 21
else if(dataset$min_ma[i]>=299 && dataset$min_ma[i]<=309.9)
  dataset$TimeBin[i] = 22
else if(dataset$min_ma[i]>=288 && dataset$min_ma[i]<=298.9)
  dataset$TimeBin[i] = 23
else if(dataset$min_ma[i]>=277 && dataset$min_ma[i]<=287.9)
  dataset$TimeBin[i] = 24
else if(dataset$min_ma[i]>=266 && dataset$min_ma[i]<=276.9)
  dataset$TimeBin[i] = 25
else if(dataset$min_ma[i]>=255 && dataset$min_ma[i]<=265.9)
  dataset$TimeBin[i] = 26
else if(dataset$min_ma[i]>=244 && dataset$min_ma[i]<=254.9)
  dataset$TimeBin[i] = 27
else if(dataset$min_ma[i]>=233 && dataset$min_ma[i]<=243.9)
  dataset$TimeBin[i] = 28
else if(dataset$min_ma[i]>=222 && dataset$min_ma[i]<=232.9)
  dataset$TimeBin[i] = 29
else if(dataset$min_ma[i]>=211 && dataset$min_ma[i]<=221.9)
  dataset$TimeBin[i] = 30
else if(dataset$min_ma[i]>=200 && dataset$min_ma[i]<=210.9)
  dataset$TimeBin[i] = 31
else if(dataset$min_ma[i]>=189 && dataset$min_ma[i]<=199.9)
  dataset$TimeBin[i] = 32
else if(dataset$min_ma[i]>=178 && dataset$min_ma[i]<=188.9)
  dataset$TimeBin[i] = 33
else if(dataset$min_ma[i]>=167 && dataset$min_ma[i]<=177.9)
  dataset$TimeBin[i] = 34
else if(dataset$min_ma[i]>=156 && dataset$min_ma[i]<=166.9)
  dataset$TimeBin[i] = 35
else if(dataset$min_ma[i]>=145 && dataset$min_ma[i]<=155.9)
  dataset$TimeBin[i] = 36
else if(dataset$min_ma[i]>=134 && dataset$min_ma[i]<=144.9)
  dataset$TimeBin[i] = 37
else if(dataset$min_ma[i]>=123 && dataset$min_ma[i]<=133.9)
  dataset$TimeBin[i] = 38
else if(dataset$min_ma[i]>=112 && dataset$min_ma[i]<=122.9)
  dataset$TimeBin[i] = 39
else if(dataset$min_ma[i]>=101 && dataset$min_ma[i]<=111.9)
  dataset$TimeBin[i] = 40
else if(dataset$min_ma[i]>=90 && dataset$min_ma[i]<=100.9)
  dataset$TimeBin[i] = 41
else if(dataset$min_ma[i]>=79 && dataset$min_ma[i]<=89.9)
  dataset$TimeBin[i] = 42
else if(dataset$min_ma[i]>=68 && dataset$min_ma[i]<=78.9)
  dataset$TimeBin[i] = 43  
else if(dataset$min_ma[i]>=57 && dataset$min_ma[i]<=67.9)
  dataset$TimeBin[i] = 44  
else if(dataset$min_ma[i]>=46 && dataset$min_ma[i]<=56.9)
  dataset$TimeBin[i] = 45
else if(dataset$min_ma[i]>=35 && dataset$min_ma[i]<=45.9)
  dataset$TimeBin[i] = 46  
else if(dataset$min_ma[i]>=24 && dataset$min_ma[i]<=34.9)
  dataset$TimeBin[i] = 47 
else if(dataset$min_ma[i]>=13 && dataset$min_ma[i]<=23.9)
  dataset$TimeBin[i] = 48  
else if(dataset$min_ma[i]>=2 && dataset$min_ma[i]<=12.9)
  dataset$TimeBin[i] = 49  
else if(dataset$min_ma[i]>=-9 && dataset$min_ma[i]<=1.9)
  dataset$TimeBin[i] = 50  
}

# for counting the Timbin for each LatBin  
count(dataset,TimeBin,LatBin)
list = dataset %>% count(TimeBin,LatBin)


# for Calcultion of Tropical Total , Extra Tropical Total and Polar Total
datacal<- read_xlsx('Dumm.xlsx')

datacal[,8]<- datacal[,2] + datacal[,3]
datacal[,9]<- datacal[,4] + datacal[,5]
datacal[,10]<- datacal[,6] + datacal[,7]

# for Calculating Ratio for Tropical Total / (TT+ETT+PT)
datacal[,11]<- datacal[,8]/(datacal[,8] + datacal[,9] + datacal[,10])
datacal[,12]<- datacal[,9]/(datacal[,8] + datacal[,9] + datacal[,10])

# for Plotting grap of TT vs Time bin and ETT vs Time bin

qplot(datacal$`Time bin`, datacal$`TT / (TT+ETT+PT)`) + geom_line()
qplot(datacal$`Time bin`, datacal$`ETT / (TT+ETT+PT)`) + geom_line()

