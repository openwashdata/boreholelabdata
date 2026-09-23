# Water Quality Laboratory Analysis and Reporting Dataset – Malawi (2017–2019)

This dataset contains comprehensive records of water quality test
results collected from various water points across Malawi between 2017
and 2019

## Usage

``` r
boreholelabdata
```

## Format

A tibble with 32 rows and 53 variables

- waterpoint_name:

  Name of the water point site

- waterpoint_type:

  category of the water point (e.g., borehole, well, spring)

- latitude:

  Geographic latitude coordinate of the water point

- longitude:

  Geographic longitude coordinate of the water point

- date_sample_collected:

  Date when the water sample was physically collected from the site

- date_sample_analyzed:

  Date when the collected sample was analyzed in the laboratory

- date_results_received:

  Date when the lab results were received or recorded

- lab_sample_no:

  Unique laboratory identification number assigned to the sample

- ph_value:

  pH value of the water sample

- ph_within_mw_standards:

  pH value falls within Malawis water quality standards (Yes/No)

- conductivity:

  Measures electrical conductivity of water, indicating ion
  concentration (?S/cm at 25C)

- conductivity_within_mw_standards:

  conductivity is within Malawis acceptable standards (Yes/No)

- tds_mg_l:

  Concentration of total dissolved solids in mg per liter

- tds_within_standards:

  total dissolved solids fall within Malawis standards (Yes/No)

- carbonate_mg_l:

  Concentration of carbonate ions in mg per liter

- carbonate_within_standards:

  carbonate levels meet Malawis water standards (Yes/No)

- bicarbonate_mg_l:

  Concentration of bicarbonate ions in mg per liter

- bicarbonate_within_standards:

  bicarbonate levels meet Malawis water standards (Yes/No)

- chloride_mg_l:

  Concentration of chloride ions in mg per liter

- chloride_within_standards:

  chloride levels are within Malawis acceptable limits (Yes/No)

- sulphate_mg_l:

  Concentration of sulphate ions in mg per liter

- sulphate_within_standards:

  sulphate levels are within Malawis standards (Yes/No)

- nitrate_mg_l:

  Concentration of nitrate ions in mg per liter

- nitrate_within_standards:

  nitrate levels comply with Malawis standards (Yes/No)

- fluoride_mg_l:

  Concentration of fluoride ions in mg per liter

- fluoride_within_standards:

  fluoride levels meet Malawis water quality standards (Yes/No)

- sodium_mg_l:

  Concentration of sodium ions in mg per liter

- sodium_within_standards:

  sodium concentration is within Malawis standards (Yes/No)

- potassium_mg_l:

  Concentration of potassium ions in mg per liter

- potassium_within_standards:

  potassium levels comply with Malawis water standards (Yes/No)

- calcium_mg_l:

  Concentration of calcium ions in mg per liter

- calcium_within_standards:

  calcium levels fall within Malawis acceptable standards (Yes/No)

- magnesium_mg_l:

  Concentration of magnesium ions in mg per liter

- magnesium_within_standards:

  magnesium levels comply with Malawis standards (Yes/No)

- iron_mg_l:

  Concentration of iron in mg per liter

- iron_within_standards:

  iron concentration is within Malawis water quality limits (Yes/No)

- manganese_mg_l:

  Concentration of manganese in mg per liter

- manganese_within_standards:

  manganese levels meet Malawis water standards (Yes/No)

- hardness_mg_l:

  Total hardness of water measured as mg/l of calcium carbonate

- hardness_within_standards:

  total hardness is within Malawis acceptable limits (Yes/No)

- alkalinity_mg_l:

  Total alkalinity of water measured as mg/l of calcium carbonate

- alkalinity_within_standards:

  alkalinity levels are within Malawis standards (Yes/No)

- arsenic:

  Concentration of arsenic in water

- arsenic_within_standards:

  arsenic levels comply with Malawis water quality standards (Yes/No)

- turbidity_ntu:

  Measure of water turbidity in Nephelometric Turbidity Units (NTU)

- turbidity_within_standards:

  turbidity is within Malawis acceptable water quality limits (Yes/No)

- suspended_solids:

  Concentration of suspended solids in water (mg/l)

- suspended_within_standards:

  suspended solids levels meet Malawis standards (Yes/No)

- faecal_coli_count:

  Count of fecal coliform bacteria per 100 ml of water

- faecal_coli_within_standards:

  fecal coliform counts meet Malawis water quality standards (Yes/No)

- faecal_strep_count:

  Count of fecal streptococci bacteria per 100 ml of water

- faecal_strep_within_standards:

  fecal streptococci counts meet Malawis water standards (Yes/No)

- comments:

  Additional remarks or observations related to the sample or site
