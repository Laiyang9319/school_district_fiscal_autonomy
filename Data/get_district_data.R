library(educationdata)
directory <- get_education_data(level = "school-districts",
                           source = "ccd",
                           topic = "directory",
                           filters = list(year = c(1993:2021)))
write.csv(directory, file = "districts_directory.csv", row.names = FALSE)

finance <- get_education_data(level = "school-districts",
                              source = "ccd",
                              topic = "finance",
                              filters = list(year = c(1994:2018)))
