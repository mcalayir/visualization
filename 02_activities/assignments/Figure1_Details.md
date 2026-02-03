# Visualization 1 (Python): Where the Tallest Buildings Are (Top 33, 2026)

# Data source
The underlying building list and attributes (rank, city/country, height, floors, structural system, function) come from the CTBUH Skyscraper Center tall buildings database.
I exported and used a dataset of tallest_buildings_top33_2026_ctbuh.csv (Top 33 rows).
Source: CTBUH Skyscraper Center – Buildings: https://www.skyscrapercenter.com/buildings 

# Software used
This visualization was created using Python (pandas + matplotlib). The figure is a horizontal bar chart showing the number of buildings per country within the Top 33 list.

# Intended audience
A general academic audience, plus readers interested in global urban development and skyscraper geography (e.g., planning/architecture students, policy analysts).

# Message / what it conveys
The chart communicates where the world’s tallest completed buildings (within this Top 33) are concentrated. The top-33 tallest completed buildings are highly concentrated by China and the United States, with smaller counts in Malaysia and United Arab Emirates, and single entries across Vietnam, Russia, Taiwan, South Korea, Saudi Arabia. The implication is that supertall development is not evenly distributed; it clusters in specific national contexts.

# Design considerations (and how you applied them)

-- Horizontal bars improve readability for country labels (no rotated text).
-- A sorted order (largest to smallest) supports quick comparison and reduces cognitive load.
-- Clear title and axis label
-- White space keep labels legible and prevent clipping.
-- Light x-axis gridlines to improve approximate reading of counts.

# Reproducibility
--The visualization is produced from a scripted pipeline (not manual editing): read CSV, compute value_counts(), plot , export PNG.
-- The script also writes out the underlying tables used to generate the chart (e.g., a country_counts.csv) and a small metadata file, so another person can regenerate and verify the exact inputs/outputs.

# Accessibility

-- The encoding is primarily position/length, not color (one-color bars), which supports color-vision accessibility.
-- Exported the data table (country counts) so screen-reader users or anyone who can’t interpret the image can still access the values.

# Who might be impacted
Students and the public may use it to form opinions about national development, investment patterns, and leadership in supertall construction.
It can also influence how media or stakeholders frame global urban growth.

# Feature selection (include/exclude)
Included: country and a count of buildings
Excluded: height, floors, structure, function, those are not needed for a country-count message and would clutter the chart.

# Underwater labour (hidden work)
Standardizing country names, checking missing values, ensuring the dataset is limited to the “Top 33” and validating that each row represents one unique building (no duplicates).