# Stack Overflow Tag Prediction With Public BigQuery Data

### AIM :
Predict the tag for question that posted by users

### DataSet:
Used the public BigQuery Dataset.
Datset can be found in GCP console. Link is given in description
https://console.cloud.google.com/bigquery

### Data Extraction:
The dataset in GCP console is much larger.Inorder to that,only extracted most frequent 150 tags and 500 samples from each tag class to build final dataset.
The queries for the execution can be found on queries subfolder.
The output from the queries is converted into csv and do further task.



