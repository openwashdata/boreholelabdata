#' Water Quality Laboratory Analysis and Reporting Dataset – Malawi (2017–2019)
#'
#' This dataset contains comprehensive records of water quality test results
#' collected from various water points across Malawi between 2017 and 2019
#'
#' @format A tibble with 32 rows and 53 variables
#' \describe{
#'   \item{waterpoint_name}{Name of the water point site}
#'   \item{waterpoint_type}{category of the water point (e.g., borehole, well, spring)}
#'   \item{latitude}{Geographic latitude coordinate of the water point}
#'   \item{longitude}{Geographic longitude coordinate of the water point}
#'   \item{date_sample_collected}{Date when the water sample was physically collected from the site}
#'   \item{date_sample_analyzed}{Date when the collected sample was analyzed in the laboratory}
#'   \item{date_results_received}{Date when the lab results were received or recorded}
#'   \item{lab_sample_no}{Unique laboratory identification number assigned to the sample}
#'   \item{ph_value}{pH value of the water sample}
#'   \item{ph_within_mw_standards}{pH value falls within Malawis water quality standards (Yes/No)}
#'   \item{conductivity}{Measures electrical conductivity of water, indicating ion concentration (?S/cm at 25C)}
#'   \item{conductivity_within_mw_standards}{conductivity is within Malawis acceptable standards (Yes/No)}
#'   \item{tds_mg_l}{Concentration of total dissolved solids in mg per liter}
#'   \item{tds_within_standards}{total dissolved solids fall within Malawis standards (Yes/No)}
#'   \item{carbonate_mg_l}{Concentration of carbonate ions in mg per liter}
#'   \item{carbonate_within_standards}{carbonate levels meet Malawis water standards (Yes/No)}
#'   \item{bicarbonate_mg_l}{Concentration of bicarbonate ions in mg per liter}
#'   \item{bicarbonate_within_standards}{bicarbonate levels meet Malawis water standards (Yes/No)}
#'   \item{chloride_mg_l}{Concentration of chloride ions in mg per liter}
#'   \item{chloride_within_standards}{chloride levels are within Malawis acceptable limits (Yes/No)}
#'   \item{sulphate_mg_l}{Concentration of sulphate ions in mg per liter}
#'   \item{sulphate_within_standards}{sulphate levels are within Malawis standards (Yes/No)}
#'   \item{nitrate_mg_l}{Concentration of nitrate ions in mg per liter}
#'   \item{nitrate_within_standards}{nitrate levels comply with Malawis standards (Yes/No)}
#'   \item{fluoride_mg_l}{Concentration of fluoride ions in mg per liter}
#'   \item{fluoride_within_standards}{fluoride levels meet Malawis water quality standards (Yes/No)}
#'   \item{sodium_mg_l}{Concentration of sodium ions in mg per liter}
#'   \item{sodium_within_standards}{sodium concentration is within Malawis standards (Yes/No)}
#'   \item{potassium_mg_l}{Concentration of potassium ions in mg per liter}
#'   \item{potassium_within_standards}{potassium levels comply with Malawis water standards (Yes/No)}
#'   \item{calcium_mg_l}{Concentration of calcium ions in mg per liter}
#'   \item{calcium_within_standards}{calcium levels fall within Malawis acceptable standards (Yes/No)}
#'   \item{magnesium_mg_l}{Concentration of magnesium ions in mg per liter}
#'   \item{magnesium_within_standards}{magnesium levels comply with Malawis standards (Yes/No)}
#'   \item{iron_mg_l}{Concentration of iron in mg per liter}
#'   \item{iron_within_standards}{iron concentration is within Malawis water quality limits (Yes/No)}
#'   \item{manganese_mg_l}{Concentration of manganese in mg per liter}
#'   \item{manganese_within_standards}{manganese levels meet Malawis water standards (Yes/No)}
#'   \item{hardness_mg_l}{Total hardness of water measured as mg/l of calcium carbonate}
#'   \item{hardness_within_standards}{total hardness is within Malawis acceptable limits (Yes/No)}
#'   \item{alkalinity_mg_l}{Total alkalinity of water measured as mg/l of calcium carbonate}
#'   \item{alkalinity_within_standards}{alkalinity levels are within Malawis standards (Yes/No)}
#'   \item{arsenic}{Concentration of arsenic in water}
#'   \item{arsenic_within_standards}{arsenic levels comply with Malawis water quality standards (Yes/No)}
#'   \item{turbidity_ntu}{Measure of water turbidity in Nephelometric Turbidity Units (NTU)}
#'   \item{turbidity_within_standards}{turbidity is within Malawis acceptable water quality limits (Yes/No)}
#'   \item{suspended_solids}{Concentration of suspended solids in water (mg/l)}
#'   \item{suspended_within_standards}{suspended solids levels meet Malawis standards (Yes/No)}
#'   \item{faecal_coli_count}{Count of fecal coliform bacteria per 100 ml of water}
#'   \item{faecal_coli_within_standards}{fecal coliform counts meet Malawis water quality standards (Yes/No)}
#'   \item{faecal_strep_count}{Count of fecal streptococci bacteria per 100 ml of water}
#'   \item{faecal_strep_within_standards}{fecal streptococci counts meet Malawis water standards (Yes/No)}
#'   \item{comments}{Additional remarks or observations related to the sample or site}
#' }
"boreholelabdata"
