library(here)
library(data.table)
library(jsonlite)
library(lubridate)

here::i_am("data_prep.R")

api_csv  <- here("data", "22653cdd-d1e2-4c04-9d11-61b5cdd79b4e (1).csv")
soda_url <- "https://data.bts.gov/resource/keg4-3bc2.json?$limit=500000"
out_csv  <- here("data", "merged_border_wait_times.csv")

df_1 <- fread(api_csv)

df_bc <- fromJSON(soda_url, flatten = TRUE) |> setDT()

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