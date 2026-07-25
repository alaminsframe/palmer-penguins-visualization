# Palmer Penguins Analysis - Summary of Findings

## 1. Sample Composition & Island Distribution
A total of **333 penguins** (after excluding missing observations) were included in the analysis, comprising three species: 
- **Adelie**: *n* = 146
- **Gentoo**: *n* = 119
- **Chinstrap**: *n* = 68

The frequency distribution across islands revealed distinct habitat preferences:
- **Adelie** penguins were distributed across all three islands (Biscoe: *n* = 44, Dream: *n* = 55, Torgersen: *n* = 47).
- **Chinstrap** penguins were found exclusively on **Dream Island** (*n* = 68).
- **Gentoo** penguins were found exclusively on **Biscoe Island** (*n* = 119).

---

## 2. Bill Morphology Analysis
A one-way **ANOVA** revealed a statistically significant difference in mean bill length among the three species (*p* < 0.001). 

- **Chinstrap**: Highest mean bill length (&asymp; 48.8 mm)
- **Gentoo**: Second highest mean bill length (&asymp; 47.5 mm)
- **Adelie**: Shortest mean bill length (&asymp; 38.8 mm)

The non-overlapping confidence intervals between Adelie and the other two species confirm a clear morphological separation, while the confidence intervals of Chinstrap and Gentoo showed partial overlap, suggesting a comparatively smaller difference between these two species.

---

## 3. Body Mass & Sexual Dimorphism
Body mass distributions (visualized through violin plots) showed that:
- **Gentoo** penguins were markedly heavier (median &asymp; 5,050 g) than Adelie and Chinstrap (median &asymp; 3,700–3,750 g).
- **Gentoo** also displayed the widest spread, indicating greater variability in body size.

Sex-disaggregated boxplots revealed consistent **sexual dimorphism** across all species, with male penguins showing higher median body mass than females in every group. This difference was most pronounced in Gentoo:
- **Gentoo Males**: median &asymp; 5,500 g
- **Gentoo Females**: median &asymp; 4,700 g

Adelie and Chinstrap showed a comparatively smaller, though still consistent, male-female gap.

---

## 4. Bill Length vs. Bill Depth (Bivariate Analysis)
Bivariate analysis of bill length and bill depth revealed a weak overall correlation between the two measurements (*r* = -0.229, *p* < 0.001). 

Despite this weak pooled correlation, scatter plots showed clear **species-level clustering**:
- **Adelie**: Shorter bill length with relatively higher bill depth.
- **Gentoo**: Longer bills with lower bill depth.
- **Chinstrap**: Intermediate-to-high values for both measurements.

This clustering pattern demonstrates that bill morphology, when considered alongside species identity, provides meaningful discrimination among the three penguin groups.

---

## 5. Conclusion & Sample Considerations
Overall, sample composition was uneven across species (Adelie: 146; Gentoo: 119; Chinstrap: 68), which should be considered when interpreting the relative precision of group-wise estimates. 

Collectively, these findings demonstrate significant interspecies morphological differentiation in both bill dimensions and body mass, along with pronounced sexual dimorphism, consistent with known ecological and species-specific adaptations among *Pygoscelis* penguins in the Palmer Archipelago.
