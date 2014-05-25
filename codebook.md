
### ID Variables ###
 [1] "Activity" : the id/number of the subject on whom data was collected during the experiment                                   
 [2] "Subject" : the name of the activity being performed by the subject during the experiment
 
 
We've selected only the mean() and std() columns and have taken the means of each of those columns for each Subject+Activity combination
 
### Summarized Variables ###
                                                             
 [3] "Average of TimeDomainBodyAcceleration-Mean()-X"                          
 [4] "Average of TimeDomainBodyAcceleration-Mean()-Y"                          
 [5] "Average of TimeDomainBodyAcceleration-Mean()-Z"                          
 [6] "Average of TimeDomainBodyAcceleration-StdDev()-X"                        
 [7] "Average of TimeDomainBodyAcceleration-StdDev()-Y"                        
 [8] "Average of TimeDomainBodyAcceleration-StdDev()-Z"                        
 [9] "Average of TimeDomainGravityAcceleration-Mean()-X"                       
[10] "Average of TimeDomainGravityAcceleration-Mean()-Y"                       
[11] "Average of TimeDomainGravityAcceleration-Mean()-Z"                       
[12] "Average of TimeDomainGravityAcceleration-StdDev()-X"                     
[13] "Average of TimeDomainGravityAcceleration-StdDev()-Y"                     
[14] "Average of TimeDomainGravityAcceleration-StdDev()-Z"                     
[15] "Average of TimeDomainBodyAccelerationJerk-Mean()-X"                      
[16] "Average of TimeDomainBodyAccelerationJerk-Mean()-Y"                      
[17] "Average of TimeDomainBodyAccelerationJerk-Mean()-Z"                      
[18] "Average of TimeDomainBodyAccelerationJerk-StdDev()-X"                    
[19] "Average of TimeDomainBodyAccelerationJerk-StdDev()-Y"                    
[20] "Average of TimeDomainBodyAccelerationJerk-StdDev()-Z"                    
[21] "Average of TimeDomainBodyAngular Velocity-Mean()-X"                      
[22] "Average of TimeDomainBodyAngular Velocity-Mean()-Y"                      
[23] "Average of TimeDomainBodyAngular Velocity-Mean()-Z"                      
[24] "Average of TimeDomainBodyAngular Velocity-StdDev()-X"                    
[25] "Average of TimeDomainBodyAngular Velocity-StdDev()-Y"                    
[26] "Average of TimeDomainBodyAngular Velocity-StdDev()-Z"                    
[27] "Average of TimeDomainBodyAngular VelocityJerk-Mean()-X"                  
[28] "Average of TimeDomainBodyAngular VelocityJerk-Mean()-Y"                  
[29] "Average of TimeDomainBodyAngular VelocityJerk-Mean()-Z"                  
[30] "Average of TimeDomainBodyAngular VelocityJerk-StdDev()-X"                
[31] "Average of TimeDomainBodyAngular VelocityJerk-StdDev()-Y"                
[32] "Average of TimeDomainBodyAngular VelocityJerk-StdDev()-Z"                
[33] "Average of TimeDomainBodyAccelerationMagnitude-Mean()"                   
[34] "Average of TimeDomainBodyAccelerationMagnitude-StdDev()"                 
[35] "Average of TimeDomainGravityAccelerationMagnitude-Mean()"                
[36] "Average of TimeDomainGravityAccelerationMagnitude-StdDev()"              
[37] "Average of TimeDomainBodyAccelerationJerkMagnitude-Mean()"               
[38] "Average of TimeDomainBodyAccelerationJerkMagnitude-StdDev()"             
[39] "Average of TimeDomainBodyAngular VelocityMagnitude-Mean()"               
[40] "Average of TimeDomainBodyAngular VelocityMagnitude-StdDev()"             
[41] "Average of TimeDomainBodyAngular VelocityJerkMagnitude-Mean()"           
[42] "Average of TimeDomainBodyAngular VelocityJerkMagnitude-StdDev()"         
[43] "Average of FrequencyDomainBodyAcceleration-Mean()-X"                     
[44] "Average of FrequencyDomainBodyAcceleration-Mean()-Y"                     
[45] "Average of FrequencyDomainBodyAcceleration-Mean()-Z"                     
[46] "Average of FrequencyDomainBodyAcceleration-StdDev()-X"                   
[47] "Average of FrequencyDomainBodyAcceleration-StdDev()-Y"                   
[48] "Average of FrequencyDomainBodyAcceleration-StdDev()-Z"                   
[49] "Average of FrequencyDomainBodyAccelerationJerk-Mean()-X"                 
[50] "Average of FrequencyDomainBodyAccelerationJerk-Mean()-Y"                 
[51] "Average of FrequencyDomainBodyAccelerationJerk-Mean()-Z"                 
[52] "Average of FrequencyDomainBodyAccelerationJerk-StdDev()-X"               
[53] "Average of FrequencyDomainBodyAccelerationJerk-StdDev()-Y"               
[54] "Average of FrequencyDomainBodyAccelerationJerk-StdDev()-Z"               
[55] "Average of FrequencyDomainBodyAngular Velocity-Mean()-X"                 
[56] "Average of FrequencyDomainBodyAngular Velocity-Mean()-Y"                 
[57] "Average of FrequencyDomainBodyAngular Velocity-Mean()-Z"                 
[58] "Average of FrequencyDomainBodyAngular Velocity-StdDev()-X"               
[59] "Average of FrequencyDomainBodyAngular Velocity-StdDev()-Y"               
[60] "Average of FrequencyDomainBodyAngular Velocity-StdDev()-Z"               
[61] "Average of FrequencyDomainBodyAccelerationMagnitude-Mean()"              
[62] "Average of FrequencyDomainBodyAccelerationMagnitude-StdDev()"            
[63] "Average of FrequencyDomainBodyBodyAccelerationJerkMagnitude-Mean()"      
[64] "Average of FrequencyDomainBodyBodyAccelerationJerkMagnitude-StdDev()"    
[65] "Average of FrequencyDomainBodyBodyAngular VelocityMagnitude-Mean()"      
[66] "Average of FrequencyDomainBodyBodyAngular VelocityMagnitude-StdDev()"    
[67] "Average of FrequencyDomainBodyBodyAngular VelocityJerkMagnitude-Mean()"  
[68] "Average of FrequencyDomainBodyBodyAngular VelocityJerkMagnitude-StdDev()"



From the original codebook (archive: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation 