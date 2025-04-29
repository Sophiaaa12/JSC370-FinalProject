library(here)
library(data.table)
library(jsonlite)
library(lubridate)

here::i_am("data_prep.R")

canada_csv  <- here("data", "canada_border_data.csv")
usa_url <- "https://data.bts.gov/resource/keg4-3bc2.json?$limit=500000"

df_1 <- fread(canada_csv)

df_bc <- fromJSON(usa_url, flatten = TRUE) |> setDT()

df_1[, PortCode := as.integer(sub(" -.*$", "", `Port of Entry`))]

df_bc[, PortCode := as.integer(port_code)]

df_1[, Date := ymd(Date)]
df_bc[, Date := as.Date(date)]

date_min <- as.Date("2018-01-01")
date_max <- as.Date("2019-12-31")

df_1  <- df_1[ Date >= date_min & Date <= date_max ]
df_bc <- df_bc[ Date >= date_min & Date <= date_max ]

df_merged <- merge(
  x   = df_1,
  y   = df_bc,
  by  = c("PortCode", "Date"),
  all = FALSE
)