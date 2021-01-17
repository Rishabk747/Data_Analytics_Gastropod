dataset<- read_xlsx('Family_gastropod.xlsx')
# for calculatig the NFT Value
count(dataset,dataset$`Time Bin_FAD`)
list_NFT = dataset %>% count(dataset$`Time Bin_FAD`)
# for calculatig the NBL Value
count(dataset,dataset$`Time Bin_LAD`)
list_NBL = dataset %>% count(dataset$`Time Bin_LAD`)

count(dataset,dataset$`Time Bin_LAD`,dataset$`Time Bin_FAD`)
list_pair = dataset %>% count(dataset$`Time Bin_LAD`,dataset$`Time Bin_FAD`)

names(list_pair)[names(list_pair) == "dataset$`Time Bin_FAD`"] <- "Time Bin_FAD"
names(list_pair)[names(list_pair) == "dataset$`Time Bin_LAD`"] <- "Time Bin_LAD"
names(list_pair)[names(list_pair) == "n"] <- "count"
list_pair$NFL <- list_pair$count

list_pair$generated_uid  <- 1:nrow(list_pair)
list_pair <- list_pair[,c(5,1,2,3,4)]

for(i in 1:dim(list_pair)[1])
{
  list_pair$NFL[i] = 0;
}



for (i in 1:dim(list_pair)[1])
{
  if(list_pair$`Time Bin_LAD`[i] == list_pair$`Time Bin_FAD`[i])
  {
    list_pair$NFL[i] = list_pair$count[i];
  }
  else if (list_pair$`Time Bin_LAD`[i] != list_pair$`Time Bin_FAD`[i])
  {
    list_pair$NFL[i] = 0;
  }
}
list_pair <- list_pair[order(list_pair$`Time Bin_LAD`, -list_pair$`Time Bin_FAD`),]
list_pair <- list_pair[!duplicated(list_pair$`Time Bin_LAD`), ]

list_NBL$n <- list_NBL$n -list_pair$NFL


# for calculating the list of Time Bin_FAD - Time Bin_LAD and Family
count(dataset,dataset$`Time Bin_FAD`,dataset$`Time Bin_LAD`)
list_NFLL = dataset %>% count(dataset$`Time Bin_FAD`,dataset$`Time Bin_LAD`)
write_xlsx(list_NFLL,"C:\\Users\\Rishabh\\Desktop\\Family R Code\\nfll.xlsx")
# for Calculatig the NFL Value




nfll<- read_xlsx('nfll.xlsx')
names(nfll)[names(nfll) == "dataset$`Time Bin_FAD`"] <- "Time Bin_FAD"
names(nfll)[names(nfll) == "dataset$`Time Bin_LAD`"] <- "Time Bin_LAD"
names(nfll)[names(nfll) == "n"] <- "count"
nfll$NBT <- nfll$count
for(i in 1:dim(nfll)[1])
{
  nfll$NBT[i] = 0;
}
nfll$generated_uid  <- 1:nrow(nfll)
nfll <- nfll[,c(5,1,2,3,4)]
nfll$NFL <- nfll$count

for(i in 1:dim(nfll)[1])
{
  nfll$NFL[i] = 0;
}

for (i in 1:dim(nfll)[1])
{
  if(nfll$`Time Bin_FAD`[i] == nfll$`Time Bin_LAD`[i])
  {
    nfll$NFL[i] = nfll$count[i];
  }
  else if (nfll$`Time Bin_FAD`[i] != nfll$`Time Bin_LAD`[i])
  {
    nfll$NFL[i] = 0;
  }
}

# for Calculating the NBT
for (i in 3:dim(nfll)[1])
{
  h=i-1;
  for(j in 1:h)
  {
    if(nfll$`Time Bin_FAD`[j] < nfll$`Time Bin_FAD`[i] && nfll$`Time Bin_LAD`[j] > nfll$`Time Bin_FAD`[i])
    {
      nfll$NBT[i] <- nfll$NBT[i] + nfll$count[j];
    }
  }
  h=0;
}



names(list_NFT)[names(list_NFT) == "n"] <- "NFT"
NFT_NBT_NFL_data <- nfll[!duplicated(nfll$`Time Bin_FAD`), ]

NFT_NBT_NFL_data$NFT <- list_NFT$NFT
df <- NFT_NBT_NFL_data[ -c(1,3:4) ]
df$NFT <- df$NFT-df$NFL





