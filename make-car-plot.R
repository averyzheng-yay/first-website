library(ggthemes)
library(tidyverse)
car_plot <- mtcars |>
  select(mpg, wt) |>
  ggplot(aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = 'lm', formula = 'y ~ x', se = FALSE) +
  theme_clean() +
  labs(x = "Weight (1000s of lbs)", y = "MPG",
       title = "Fuel Efficiency and Weight",
       subtitle = "Heavier cars are less fuel efficient",
       caption = "Henderson and Vellerman (1981)")

write_rds(car_plot, "car-plot.rds")
