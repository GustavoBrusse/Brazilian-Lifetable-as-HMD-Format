install.packages("MortalityLaws")
library(MortalityLaws)


idade<-read.table("D:\\Gustavo\\Zjg1ZGMzMmRlOThiNGRjZD\\Volume{970c5b77-5f9c-4b5d-af34-3a3b0c6b725e}\\Users\\Gustavo\\Desktop\\Doutorado\\Projeção histórica\\Dados SEADE\\Mortalidade\\idade.txt")
idade<-idade[,1]
idade<-as.numeric(idade)
mort<-read.table("D:\\Gustavo\\Zjg1ZGMzMmRlOThiNGRjZD\\Volume{970c5b77-5f9c-4b5d-af34-3a3b0c6b725e}\\Users\\Gustavo\\Desktop\\Doutorado\\Projeção histórica\\Dados SEADE\\Mortalidade\\Mortalidade.txt", header=TRUE, colClasses = c("numeric"))
pop<-read.table("D:\\Gustavo\\Zjg1ZGMzMmRlOThiNGRjZD\\Volume{970c5b77-5f9c-4b5d-af34-3a3b0c6b725e}\\Users\\Gustavo\\Desktop\\Doutorado\\Projeção histórica\\Pop_Total.txt", header=TRUE, colClasses = c("numeric"))

mort<-mort-(mort*0.15)

# Life table function for each i years
for(i in 1:21){
LTSP<-LifeTable(x=idade,Dx=mort[,i], Ex=pop[,i])

name <- paste("LTSP", i, sep = "_")
assign(name, LTSP)
}

# Life table in dataframe format
LT80<-data.frame(LTSP_1$lt)
LT80<-LT80[,c(2:10)]
LT80$Year<-c(rep(1980))
LT80<-LT80[,c(10,1,2,3,4,5,6,7,8,9)]

LT81<-data.frame(LTSP_2$lt)
LT81<-LT81[,c(2:10)]
LT81$Year<-c(rep(1981))
LT81<-LT81[,c(10,1,2,3,4,5,6,7,8,9)]

LT82<-data.frame(LTSP_3$lt)
LT82<-LT82[,c(2:10)]
LT82$Year<-c(rep(1982))
LT82<-LT82[,c(10,1,2,3,4,5,6,7,8,9)]

LT83<-data.frame(LTSP_4$lt)
LT83<-LT83[,c(2:10)]
LT83$Year<-c(rep(1983))
LT83<-LT83[,c(10,1,2,3,4,5,6,7,8,9)]

LT84<-data.frame(LTSP_5$lt)
LT84<-LT84[,c(2:10)]
LT84$Year<-c(rep(1984))
LT84<-LT84[,c(10,1,2,3,4,5,6,7,8,9)]

LT85<-data.frame(LTSP_6$lt)
LT85<-LT85[,c(2:10)]
LT85$Year<-c(rep(1985))
LT85<-LT85[,c(10,1,2,3,4,5,6,7,8,9)]

LT86<-data.frame(LTSP_7$lt)
LT86<-LT86[,c(2:10)]
LT86$Year<-c(rep(1986))
LT86<-LT86[,c(10,1,2,3,4,5,6,7,8,9)]

LT87<-data.frame(LTSP_8$lt)
LT87<-LT87[,c(2:10)]
LT87$Year<-c(rep(1987))
LT87<-LT87[,c(10,1,2,3,4,5,6,7,8,9)]

LT88<-data.frame(LTSP_9$lt)
LT88<-LT88[,c(2:10)]
LT88$Year<-c(rep(1988))
LT88<-LT88[,c(10,1,2,3,4,5,6,7,8,9)]

LT89<-data.frame(LTSP_10$lt)
LT89<-LT89[,c(2:10)]
LT89$Year<-c(rep(1989))
LT89<-LT89[,c(10,1,2,3,4,5,6,7,8,9)]

LT90<-data.frame(LTSP_11$lt)
LT90<-LT90[,c(2:10)]
LT90$Year<-c(rep(1990))
LT90<-LT90[,c(10,1,2,3,4,5,6,7,8,9)]

LT91<-data.frame(LTSP_12$lt)
LT91<-LT91[,c(2:10)]
LT91$Year<-c(rep(1991))
LT91<-LT91[,c(10,1,2,3,4,5,6,7,8,9)]

LT92<-data.frame(LTSP_13$lt)
LT92<-LT92[,c(2:10)]
LT92$Year<-c(rep(1992))
LT92<-LT92[,c(10,1,2,3,4,5,6,7,8,9)]

LT93<-data.frame(LTSP_14$lt)
LT93<-LT93[,c(2:10)]
LT93$Year<-c(rep(1993))
LT93<-LT93[,c(10,1,2,3,4,5,6,7,8,9)]

LT94<-data.frame(LTSP_15$lt)
LT94<-LT94[,c(2:10)]
LT94$Year<-c(rep(1994))
LT94<-LT94[,c(10,1,2,3,4,5,6,7,8,9)]

LT95<-data.frame(LTSP_16$lt)
LT95<-LT95[,c(2:10)]
LT95$Year<-c(rep(1995))
LT95<-LT95[,c(10,1,2,3,4,5,6,7,8,9)]

LT96<-data.frame(LTSP_17$lt)
LT96<-LT96[,c(2:10)]
LT96$Year<-c(rep(1996))
LT96<-LT96[,c(10,1,2,3,4,5,6,7,8,9)]

LT97<-data.frame(LTSP_18$lt)
LT97<-LT97[,c(2:10)]
LT97$Year<-c(rep(1997))
LT97<-LT97[,c(10,1,2,3,4,5,6,7,8,9)]

LT98<-data.frame(LTSP_19$lt)
LT98<-LT98[,c(2:10)]
LT98$Year<-c(rep(1998))
LT98<-LT98[,c(10,1,2,3,4,5,6,7,8,9)]

LT99<-data.frame(LTSP_20$lt)
LT99<-LT99[,c(2:10)]
LT99$Year<-c(rep(1999))
LT99<-LT99[,c(10,1,2,3,4,5,6,7,8,9)]

LT00<-data.frame(LTSP_21$lt)
LT00<-LT00[,c(2:10)]
LT00$Year<-c(rep(2000))
LT00<-LT00[,c(10,1,2,3,4,5,6,7,8,9)]

# all life tables in one data frame
LifeT<-rbind(LT80,LT81,LT82,LT83,LT84,LT85,LT86,LT87,LT88,LT89,LT90,LT91,LT92,LT93,LT94,LT95,LT96,
             LT97,LT98,LT99,LT00)
colnames(LifeT)<-c("Year","Age","mx","qx","ax","lx","dx","Lx","Tx","ex")
write.table(LifeT,file="D:\\Gustavo\\Zjg1ZGMzMmRlOThiNGRjZD\\Volume{970c5b77-5f9c-4b5d-af34-3a3b0c6b725e}\\Users\\Gustavo\\Desktop\\Doutorado\\Projeção Histórica\\Life tables2.txt")



