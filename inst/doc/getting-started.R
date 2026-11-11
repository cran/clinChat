## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(clinChat)

## ----eval = FALSE-------------------------------------------------------------
# # Simulated clinical trial data
# set.seed(42)
# trial_data <- data.frame(
#   subject_id = paste0("S", sprintf("%03d", 1:80)),
#   age = sample(18:85, 80, replace = TRUE),
#   sex = sample(c("Male", "Female"), 80, replace = TRUE),
#   arm = sample(c("Drug A", "Drug B", "Placebo"), 80, replace = TRUE),
#   response = sample(c("Responder", "Non-responder"), 80, replace = TRUE, prob = c(0.55, 0.45)),
#   baseline_score = round(rnorm(80, 50, 12), 1)
# )
# 
# # Create a chat object
# chat <- create_clinical_chat(
#   data = trial_data,
#   system_prompt = "You are a clinical data analyst. Use the available tools to answer accurately."
# )
# 
# # Example questions you can ask (requires API key)
# # chat$chat("How many subjects are in each treatment arm?")
# # chat$chat("What is the mean age by sex?")
# # chat$chat("Summarize the dataset")

## ----eval = FALSE-------------------------------------------------------------
# lab_data <- data.frame(
#   patient_id = 1:60,
#   age = sample(25:75, 60, replace = TRUE),
#   diagnosis = sample(c("Type 2 Diabetes", "Hypertension", "Healthy"), 60, replace = TRUE),
#   hba1c = round(rnorm(60, 6.8, 1.4), 1),
#   systolic_bp = round(rnorm(60, 132, 16))
# )
# 
# chat2 <- create_clinical_chat(lab_data)
# 
# # chat2$chat("How many patients have Type 2 Diabetes and what is their average HbA1c?")
# # chat2$chat("Describe the columns in this dataset")

## ----eval = FALSE-------------------------------------------------------------
# # Launch a Shiny chat interface
# run_clinchat_app(
#   data = trial_data,
#   title = "Clinical Trial Explorer",
#   provider = "openai/gpt-4o-mini"   # or your preferred provider
# )

## ----eval = FALSE-------------------------------------------------------------
# # Inspect the tools that will be registered
# tools <- clinical_tools(trial_data)
# length(tools)   # should be 4

