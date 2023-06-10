library(educationdata)
directory <- get_education_data(level = "school-districts",
                           source = "ccd",
                           topic = "directory",
                           filters = list(year = c(1993:2021)))
write.csv(directory, file = "districts_directory.csv", row.names = FALSE)

finance <- data.frame()

# loop through the years
for(i in 1996:1998) {
  
  # get data for the year i
  getfinance <- get_education_data(level = "school-districts",
                                source = "ccd",
                                topic = "finance",
                                filters = list(year = i))
  
  # combine the new data with the existing data
  finance <- rbind(all_data, getfinance)
}

