################################################################################
# HGEN 612: Project 1
# Author: Maggie Kohn
# Date: January 21, 2026
# Description: This script ...
################################################################################


################################################################################
# Load necessary libraries
################################################################################
library(tidyverse)

################################################################################
# Instructions: generate a graphical representation for one of the variables
################################################################################
mtcars |>
  ggplot(aes(wt, mpg)) +
  geom_point() +
  geom_smooth() +
  labs(
    title = "Miles per Gallon vs. Weight of Vehicle",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
  ) +
  theme_classic(
    base_size = 14
  )



