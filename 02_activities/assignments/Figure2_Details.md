# Visualization 2 (MATLAB): World’s Tallest Completed Buildings (Top 33, 2026) — Height vs Floors

# Data source
CTBUH Skyscraper Center list and attributes (height, floors, structural system).
I used tallest_buildings_top33_2026_ctbuh.csv.
Source: CTBUH Skyscraper Center – Buildings: https://www.skyscrapercenter.com/buildings 

# Software used
This visualization was created using MATLAB, which is well-suited for quick scientific plotting, categorical legends, and consistent figure export. It is a scatter plot of Height (m) vs Number of Floors, with points grouped (colored) by structural_system and shown in a legend.

# Intended audience
A built-environment / engineering-aware audience (architecture / structural engineering students, technical stakeholders), and people who benefit from seeing how structural typologies relate to extreme height.

# Message / what it conveys
The scatter plot shows the relationship between vertical height and floor count, while also highlighting that buildings with similar floors can achieve different heights (and vice versa). Adding structural_system provides an architectural/structural interpretation: certain systems appear more common among the tallest outliers, suggesting that supertall feasibility is tied to a limited set of structural approaches. The figure also highlights the top 3 tallest buildings via annotations, making the extreme cases explicit.

# Design considerations (and how you applied them)
-- Scatter plot is appropriate for two continuous variables (floors, height).
-- A legend by structural system makes the plot multivariate without adding clutter, mapping colors to categories.
-- Gridlines + clear axis labels improve approximate reading and interpretability.
-- Labeling the top 3 by height reduces ambiguity about which points represent the tallest buildings.

# Reproducibility
-- The figure is generated from a single MATLAB script: read CSV, loop over structural systems, scatter , annotate top 3, export PNG.
--The script also writes out the dataset used (top33_rows_used.csv) plus a metadata text file (MATLAB version + input filename), supporting reruns and verification.

# Accessibility
--The script differentiates categories using marker shapes in addition to color, so the grouping isn’t dependent on color perception alone.
--The exported CSV of the plotted rows provides a non-image representation for users who can’t access the graphic directly.

# Who might be impacted
Engineering/architecture learners may use it to learn about structural systems for supertall buildings.
Public audiences could generalize from the top 33 to all skyscrapers; this framing can affect how people interpret urban development and risk/performance.

# Feature selection (include/exclude)
Included: height (m), floors, structural_system because they support the core analytical question: how do floor count and height relate, and how does structure vary across that space?
Excluded: country/city/function/year to keep the plot focused 

# Underwater labour (hidden work)
Validating numeric fields (floors, height), ensuring structural-system labels are consistent, and verifying that the “top 3” annotated points are correct.