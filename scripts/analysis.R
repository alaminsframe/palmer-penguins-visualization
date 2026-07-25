# ================================================================
# Palmer Penguins Analysis - Publication Style Visualizations
# ================================================================

# Install and load required packages
install.packages(c("palmerpenguins", "ggplot2", "dplyr", "viridis", "ggpubr"))
library(palmerpenguins)
library(ggplot2)
library(dplyr)
library(viridis)
library(ggpubr)

# Load dataset and remove missing values
data(penguins)
penguins <- na.omit(penguins)

# Define a consistent publication theme
publication_theme <- theme_classic(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 14, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    legend.position = "right",
    legend.title = element_text(face = "bold")
  )

# ================================================================
# 1. FREQUENCY TABLE
# ================================================================
freq_table <- table(penguins$species, penguins$island)
print(freq_table)

freq_df <- as.data.frame.matrix(freq_table)
write.csv(freq_df, "frequency_table.csv")

species_count <- table(penguins$species)
print(species_count)

sex_species_table <- table(penguins$species, penguins$sex)
print(sex_species_table)

# ================================================================
# 2. FOREST PLOT (with statistical test)
# ================================================================
summary_stats <- penguins %>%
  group_by(species) %>%
  summarise(
    mean_val = mean(bill_length_mm),
    sd_val = sd(bill_length_mm),
    n = n(),
    se = sd_val / sqrt(n),
    lower = mean_val - 1.96 * se,
    upper = mean_val + 1.96 * se
  )
print(summary_stats)

# ANOVA test to justify comparison shown in the forest plot
anova_result <- aov(bill_length_mm ~ species, data = penguins)
anova_summary <- summary(anova_result)
print(anova_summary)
p_value <- anova_summary[[1]]$`Pr(>F)`[1]

forest_plot <- ggplot(summary_stats, aes(x = mean_val, y = species, color = species)) +
  geom_point(size = 4) +
  geom_errorbarh(aes(xmin = lower, xmax = upper), height = 0.15, linewidth = 0.8) +
  geom_text(aes(label = paste0("n=", n)), vjust = -1.2, size = 3.5, color = "black") +
  scale_color_viridis_d() +
  labs(
    title = "Mean Bill Length by Species with 95% Confidence Intervals",
    subtitle = paste0("One-way ANOVA: p ", ifelse(p_value < 0.001, "< 0.001", paste0("= ", round(p_value, 3)))),
    x = "Mean Bill Length (mm)",
    y = "Species",
    color = "Species"
  ) +
  publication_theme +
  theme(legend.position = "none")

print(forest_plot)
ggsave("forest_plot.png", forest_plot, width = 7, height = 5, dpi = 300)

# ================================================================
# 3. VIOLIN PLOT
# ================================================================
violin_plot <- ggplot(penguins, aes(x = species, y = body_mass_g, fill = species)) +
  geom_violin(trim = FALSE, alpha = 0.8) +
  geom_boxplot(width = 0.12, fill = "white", outlier.shape = NA) +
  scale_fill_viridis_d() +
  labs(
    title = "Distribution of Body Mass Across Penguin Species",
    subtitle = paste0("Total sample size: n = ", nrow(penguins)),
    x = "Species",
    y = "Body Mass (g)"
  ) +
  publication_theme +
  theme(legend.position = "none")

print(violin_plot)
ggsave("violin_plot.png", violin_plot, width = 7, height = 5, dpi = 300)

# ================================================================
# 4. BAR CHART
# ================================================================
bar_chart <- ggplot(penguins, aes(x = species, fill = species)) +
  geom_bar() +
  geom_text(stat = "count", aes(label = after_stat(count)), vjust = -0.5, size = 4) +
  scale_fill_viridis_d() +
  labs(
    title = "Sample Distribution of Penguin Species",
    x = "Species",
    y = "Number of Individuals"
  ) +
  publication_theme +
  theme(legend.position = "none") +
  ylim(0, max(table(penguins$species)) + 20)

print(bar_chart)
ggsave("bar_chart.png", bar_chart, width = 7, height = 5, dpi = 300)