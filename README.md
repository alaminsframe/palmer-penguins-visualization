# Palmer Penguins Data Visualization Analysis

🌐 **Live Demo:** [https://alaminsframe.github.io/palmer-penguins-visualization/](https://alaminsframe.github.io/palmer-penguins-visualization/)

## Overview
This repository presents a publication-style statistical analysis and 
visualization of the Palmer Penguins dataset, demonstrating exploratory 
data analysis, statistical testing, and reproducible visualization 
workflows in both R and Python.

## Objectives
- Generate a frequency distribution table across species and islands
- Visualize mean bill length with 95% confidence intervals (forest plot)
- Compare body mass distributions across species (violin plot)
- Summarize sample composition (bar chart)
- Explore bivariate relationships and sex-based differences using Python

## Repository Structure
| File / Folder | Description |
|---|---|
| `index.html` | Interactive web presentation and report |
| `scripts/` | R (`analysis.R`) and Python (`analysis.ipynb`) analysis workflows |
| `plots/` | All generated visualizations |
| `data/` | Cleaned dataset (`penguins_dataset.csv`) |
| `results/` | Research-paper style results write-up (`result.md`) |

## Tools Used
- **R**: `ggplot2`, `dplyr`, `viridis`, `palmerpenguins`
- **Python**: `seaborn`, `matplotlib`, `scipy`, `pandas`

## How to Reproduce
1. Open `scripts/analysis.R` in RStudio and run sequentially
2. Open `scripts/analysis.ipynb` in Jupyter Notebook / VS Code and run sequentially
3. All plots will be saved automatically as PNG files in the `plots/` directory

## Dataset Citation
Horst, A. M., Hill, A. P., & Gorman, K. B. (2020). palmerpenguins: Palmer 
Archipelago (Antarctica) penguin data. R package version 0.1.0. 
https://allisonhorst.github.io/palmerpenguins/

Original data source:
Gorman, K. B., Williams, T. D., & Fraser, W. R. (2014). Ecological sexual 
dimorphism and environmental variability within a community of Antarctic 
penguins (genus Pygoscelis). PLoS ONE, 9(3), e90081. 
https://doi.org/10.1371/journal.pone.0090081

## Author
Md Al Amin Sheikh
