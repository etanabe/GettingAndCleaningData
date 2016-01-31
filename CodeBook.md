#Study.txt#
CodeBook<br>

In order to fully understand all the activities performed here, please refer to the 
	source files documentation, available on the UCI HAR Dataset folder in your 
	Working Directory

The available files were loaded into R and the following activities were performed:
- Training and test data were merged in order to create one data set;
- Use only variables of mean and standard deviation, using the label as criteria, 
	grepping those ones tha contains with "mean" or "std".
- Observations were enhanced with the activities descriptions instead of numbers, 
	just like the variables
- Based on the data set built so far, a new on was built, consistent of a tidy data 
	set with the average of each variable for each activity and each subject.

There were 30 subjects and 6 activities: <br>
- 1 WALKING
- 2 WALKING_UPSTAIRS
- 3 WALKING_DOWNSTAIRS
- 4 SITTING
- 5 STANDING
- 6 LAYING

The analysis result is stored in the study.txt, located on the RData folder inside your working 
	directory.
This file contains the mean of the following variables, grouped by subject and activity:
<pre><code> 
[1] "subject" 
[2] "activity"     
[3] "tBodyAcc-mean()-X"              
[4] "tBodyAcc-mean()-Y"              
[5] "tBodyAcc-mean()-Z"              
[6] "tBodyAcc-std()-X"               
[7] "tBodyAcc-std()-Y"               
[8] "tBodyAcc-std()-Z"               
[9] "tGravityAcc-mean()-X"           
[10] "tGravityAcc-mean()-Y"           
[11] "tGravityAcc-mean()-Z"           
[12] "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"            
[14] "tGravityAcc-std()-Z"            
[15] "tBodyAccJerk-mean()-X"          
[16] "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"          
[18] "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"           
[20] "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"             
[22] "tBodyGyro-mean()-Y"             
[23] "tBodyGyro-mean()-Z"             
[24] "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"              
[26] "tBodyGyro-std()-Z"              
[27] "tBodyGyroJerk-mean()-X"         
[28] "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"         
[30] "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"          
[32] "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"             
[34] "tBodyAccMag-std()"              
[35] "tGravityAccMag-mean()"          
[36] "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"         
[38] "tBodyAccJerkMag-std()"          
[39] "tBodyGyroMag-mean()"            
[40] "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"        
[42] "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"              
[44] "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"              
[46] "fBodyAcc-std()-X"               
[47] "fBodyAcc-std()-Y"               
[48] "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"          
[50] "fBodyAcc-meanFreq()-Y"          
[51] "fBodyAcc-meanFreq()-Z"          
[52] "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"          
[54] "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"           
[56] "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"           
[58] "fBodyAccJerk-meanFreq()-X"      
[59] "fBodyAccJerk-meanFreq()-Y"      
[60] "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"             
[62] "fBodyGyro-mean()-Y"             
[63] "fBodyGyro-mean()-Z"             
[64] "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"              
[66] "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"         
[68] "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"         
[70] "fBodyAccMag-mean()"             
[71] "fBodyAccMag-std()"              
[72] "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"     
[74] "fBodyBodyAccJerkMag-std()"      
[75] "fBodyBodyAccJerkMag-meanFreq()" 
[76] "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"         
[78] "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"    
[80] "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()
</code></pre>
