################################################################################
# HGEN 612: Project 1
# Author: Maggie Kohn
# Date: January 21, 2026
# Description: Generates a graphical representation of the mtcars dataset
################################################################################


################################################################################
# Load necessary libraries
################################################################################
library(tidyverse)


################################################################################
# Convert discrete variables to factors for better plotting
################################################################################
mtcars_clean <- mtcars |>
  mutate(
    vs    = factor(vs, labels = c("V-shaped", "Straight")),
    am    = factor(am, labels = c("Automatic", "Manual")),
    cyl   = factor(cyl),
    gear  = factor(gear),
    carb  = factor(carb)
  )

################################################################################
# Graph representing mpg vs wt, faceted by transmission type (am)
################################################################################
mtcars_clean |>
  ggplot(aes(wt, mpg)) +
  geom_point() +
  geom_smooth() +
  facet_grid(~am) +
  labs(
    title = "Miles per gallon by vehicle weight",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
  ) +
  theme_linedraw(
    base_size = 14
  )
