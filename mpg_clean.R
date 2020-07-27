library(readr)
mpg = read_csv('./vehicles.csv', )

mpg_lite = mpg[,c('year', 'make', 'model', 'trany', 'city08', 'highway08', 'fuelType')]
# sum(mpg[,'fuelType'] != 'Electricity')
mpg_gasonly = mpg_lite[mpg[,'fuelType'] != 'Electricity',]

mpg_clean = mpg_gasonly[
  with(mpg_gasonly, order(year, make, model)),
  ]

write_csv(mpg_clean, './vehicles_clean.csv')

# foo = mpg[mpg[,'model'] == 'Corolla',]
