library(ggplot2)

# -----------------------------------------------------------
# Reconstruct Galton's pea seed dataset
# The original data were published as a frequency table.
# Here I recreate individual observations using rep(),
# which repeats each value according to its frequency.
# -----------------------------------------------------------

parentseed_diameters <- c(
  rep(21.00, 100),
  rep(20.00, 100),
  rep(19.00, 100),
  rep(18.00, 100),
  rep(17.00, 100),
  rep(16.00, 100),
  rep(15.00, 100)
)

daughterseed_diameters <- c(
  rep(14.67, 22), rep(15.67, 8), rep(16.67, 10), rep(17.67, 18), rep(18.67, 21), rep(19.67, 13), rep(20.67, 6), rep(22.67, 2),
  rep(14.66, 23), rep(15.66, 10), rep(16.66, 12), rep(17.66, 17), rep(18.66, 20), rep(19.66, 13), rep(20.66, 3), rep(22.66, 2),
  rep(14.07, 35), rep(15.07, 16), rep(16.07, 12), rep(17.07, 13), rep(18.07, 11), rep(19.07, 10), rep(20.07, 2), rep(22.07, 1),
  rep(14.35, 34), rep(15.35, 12), rep(16.35, 13), rep(17.35, 17), rep(18.35, 16), rep(19.35, 6), rep(20.35, 2),
  rep(13.92, 37), rep(14.92, 16), rep(15.92, 13), rep(16.92, 16), rep(17.92, 13), rep(18.92, 4), rep(19.92, 1),
  rep(14.28, 34), rep(15.28, 15), rep(16.28, 18), rep(17.28, 16), rep(18.28, 13), rep(19.28, 3), rep(20.28, 1),
  rep(13.77, 46), rep(14.77, 14), rep(15.77, 9), rep(16.77, 11), rep(17.77, 14), rep(18.77, 4), rep(19.77, 2)
)

# combine variables into a single data frame
galtonData <- data.frame(parentseed_diameters, daughterseed_diameters)

# perform a Pearson correlation test
cor_test <- cor.test(
  galtonData$parentseed_diameters,
  galtonData$daughterseed_diameters
)

print(cor_test)

# scatter plot with regression line
ggplot(galtonData, aes(x = parentseed_diameters, y = daughterseed_diameters)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(
    title = "Diameters of Parent and Daughter Seeds Generated from Galton (1884)",
    x = "Diameter of Parent Seed (0.01 inch)",
    y = "Diameter of Daughter Seed (0.01 inch)"
  ) +
  annotate(
    "label",
    x = 20.9,
    y = max(galtonData$daughterseed_diameters),
    label = "r = 0.346, p < .001",
    color = "red",
    fill = "grey80",
    alpha = 0.5,
    label.size = 0,
    family = "AvantGarde",
    size = 5,
    hjust = 1
  ) +
  theme_classic() +
  theme(
    plot.title = element_text(face = "bold", size = 20, family = "AvantGarde"),
    text = element_text(family = "AvantGarde"),
    axis.title.x = element_text(margin = margin(t = 15), size = 14),
    axis.title.y = element_text(margin = margin(r = 15), size = 14)
  )