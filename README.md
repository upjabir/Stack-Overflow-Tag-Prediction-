# Stack Overflow Tag Prediction With Public BigQuery Data

### AIM :
Predict the tag for question that posted by users

### DataSet:
Used the public BigQuery Dataset. <br />
Datset can be found in GCP console. <br />
https://console.cloud.google.com/bigquery

### Data Extraction:
The dataset in GCP console is much larger.Inorder to that,only extracted most frequent 150 tags and 500 samples from each tag class to build final dataset.<br />
The queries for the execution can be found on queries subfolder.<br />
The output from the queries is converted into csv and do further task.<br />

### Performance metric
<b>Micro-Averaged F1-Score (Mean F Score) </b>: 
The F1 score can be interpreted as a weighted average of the precision and recall, where an F1 score reaches its best value at 1 and worst score at 0. The relative contribution of precision and recall to the F1 score are equal. The formula for the F1 score is:

<i>F1 = 2 * (precision * recall) / (precision + recall)</i><br>

In the multi-class and multi-label case, this is the weighted average of the F1 score of each class. <br>

<b>'Micro f1 score': </b><br>
Calculate metrics globally by counting the total true positives, false negatives and false positives. This is a better metric when we have class imbalance.
<br>

<b>'Macro f1 score': </b><br>
Calculate metrics for each label, and find their unweighted mean. This does not take label imbalance into account.
<br>

<b> 'Hamming loss' :</b><br>
The Hamming loss is the fraction of labels that are incorrectly predicted. <br>


