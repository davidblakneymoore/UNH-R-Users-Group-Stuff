
Time <- seq.POSIXt(as.POSIXct("2020-01-01 0:00:00", format = "%Y-%m-%d %H:%M:%S"), as.POSIXct("2022-01-01 00:00:00", format = "%Y-%m-%d %H:%M:%S"), by = "15 min")
Temperature <- ((15 * cos(2 * pi * (as.numeric(Time) / (365.26 * 24 * 60 * 60)) + pi)) + 10) + (5 * cos(2 * pi * (as.numeric(Time) / (24 * 60 * 60)) + pi)) + rnorm(length(Time))
Data_Frame_1 <- data.frame(Time, Temperature)

Date <- seq.Date(as.Date("2020-01-01", format = "%Y-%m-%d"), as.Date("2022-01-01", format = "%Y-%m-%d"), by = "1 day")
Temperature <- ((15 * cos(2 * pi * (as.numeric(Date) / 365.26) + pi)) + 10) + rnorm(length(Date), 0, 5)
Data_Frame_2 <- data.frame(Date, Temperature)

Orientation <- rep((360 / 8) * seq_len(8), each = 5)
Tree_Number <- rep(1:5, length.out = length(Orientation))
Moss_Biomass <- c(abs(rnorm(5, 8, 2)), abs(rnorm(5, 15, 2)), abs(rnorm(5, 19, 2)), abs(rnorm(5, 20, 2)), abs(rnorm(5, 17, 2)), abs(rnorm(5, 14, 2)), abs(rnorm(5, 11, 2)), abs(rnorm(5, 10, 2)))
Data_Frame_5 <- data.frame(Tree_Number, Orientation, Moss_Biomass)
Data_Frame_5 <- Data_Frame_5[order(Data_Frame_5$Tree_Number), ]
rownames(Data_Frame_5) <- NULL
