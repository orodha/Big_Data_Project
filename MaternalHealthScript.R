# Load packages
library(tidyverse)

# Load data
df <- read.csv("../data/Maternal Health Risk Data Set.csv")

# Understand the pregnancy health data
# Understand the meaning and significance of each variable in the context of pregnancy health

# Look for fist 10 observations
head(df,10)

#Description of variables:
#-------------------------
#1. Age         - Age in years when a woman is pregnant
#2. SystolicBP  - Upper value of Blood Pressure in mmHg, another significant attribute during pregnancy
#3. DiastolicBP - Lower value of Blood Pressure in mmHg, another significant attribute during pregnancy
#4. BS          - Blood glucose levels is in terms of a molar concentration, mmol/L
#5. BodyTemp    - Body temperature in Fahrenheit
#6. HeartRate   - Resting heart rate in beats per minute
#7. RiskLevel   - Predicted Risk Intensity Level during pregnancy ['high risk', 'mid risk', 'low risk']

# Structure of the dataset
str(df)

# Data cleaning

# convert the column `BodyTemp` to celcius unit
dft <- df %>% 
  mutate(BodyTemp = round((BodyTemp - 32) * (5/9), 1))
# Normal temperatures during pregnancy(35.6–37.5°C)
head(dft,10)


# Data Transformation

# Exploratory Data Analysis (EDA)

# Data Splitting

# Structure of data

