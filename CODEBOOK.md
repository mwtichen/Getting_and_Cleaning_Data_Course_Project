#CODEBOOK

##STUDY DESIGN

###RAW DATASET

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected 
for generating the training data and 30% the test data. 

The measurments for this datset come from the accelerometer and gyroscope 3-axial raw signals in the X, Y and Z directions. 
These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals.

###TIDY DATASET

From the 561 measurements of the test dataset, I extracted only the measurements on the mean and standard deviation 
for each measurement. I used WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, and LAYING
as the activity names. I gave the measurement descriptive lables that are easy to understand. I also appended a
subject variable to the dataset. Next, I repeated the same process for the train dataset, then merged the test
and train datasets into one dataset. I made the tidy dataset by calculating the average (mean) for each variable
by activity and subject. Finally I appended the phrase 'Mean of ' to each measurement in the tidy dataset, so that
it's clear the tidy dataset is a mean summary of the measures by activity and subject.


##INSTRUCTION LIST

See the run_analyis.R script.

##CODEBOOK

Besides the first two variables, all variables are measurements from the above procudure and 
were named so that the meaning is self-explanatory. These are measurements of the acceleration
of smartphone as subjects in the experiment performed various activities.
Note that the variables are a mean summary of the means and standard deviations of the original variables, 
by activity and subject. The following are the variables of the tidy dataset:

* "activity" - a factor variable with levels WALKING,WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
* "subject" - a factor variable with levels 1-30 for the 30 subjects in the smartphone experiment
* "Mean of Accelerometer Body Signal Mean in the X direction"
* "Mean of Accelerometer Body Signal Mean in the Y direction"
* "Mean of Accelerometer Body Signal Mean in the Z direction"
* "Mean of Accelerometer Body Signal Standard Deviation in the X direction"
* "Mean of Accelerometer Body Signal Standard Deviation in the Y direction"
* "Mean of Accelerometer Body Signal Standard Deviation in the Z direction"
* "Mean of Accelerometer Gravity Signal Mean in the X direction"
* "Mean of Accelerometer Gravity Signal Mean in the Y direction"
* "Mean of Accelerometer Gravity Signal Mean in the Z direction"
* "Mean of Accelerometer Gravity Signal Standard Deviation in the X direction"
* "Mean of Accelerometer Gravity Signal Standard Deviation in the Y direction"
* "Mean of Accelerometer Gravity Signal Standard Deviation in the Z direction"
* "Mean of Accelerometer Body Jerk Mean in the X direction"
* "Mean of Accelerometer Body Jerk Mean in the Y direction"
* "Mean of Accelerometer Body Jerk Mean in the Z direction"
* "Mean of Accelerometer Body Jerk Standard Deviation in the X direction"
* "Mean of Accelerometer Body Jerk Standard Deviation in the Y direction"
* "Mean of Accelerometer Body Jerk Standard Deviation in the Z direction"
* "Mean of Gyroscope Body Signal Mean in the X direction"
* "Mean of Gyroscope Body Signal Mean in the Y direction"
* "Mean of Gyroscope Body Signal Mean in the Z direction"
* "Mean of Gyroscope Body Signal Standard Deviation in the X direction"
* "Mean of Gyroscope Body Signal Standard Deviation in the Y direction"
* "Mean of Gyroscope Body Signal Standard Deviation in the Z direction"
* "Mean of Gyroscope Body Jerk Mean in the X direction"
* "Mean of Gyroscope Body Jerk Mean in the Y direction"
* "Mean of Gyroscope Body Jerk Mean in the Z direction"
* "Mean of Gyroscope Body Jerk Standard Deviation in the X direction"
* "Mean of Gyroscope Body Jerk Standard Deviation in the Y direction"
* "Mean of Gyroscope Body Jerk Standard Deviation in the Z direction"
* "Mean of Magnitude of Accelerometer Body Signal Mean"
* "Mean of Magnitude of Accelerometer Body Signal Standard Deviation"
* "Mean of Magnitude of Accelerometer Gravity Signal Mean"
* "Mean of Magnitude of Accelerometer Gravity Signal Standard Deviation"
* "Mean of Magnitude of Accelerometer Body Jerk Mean"
* "Mean of Magnitude of Accelerometer Body Jerk Standard Deviation"
* "Mean of Magnitude of Gyroscope Body Signal Mean"
* "Mean of Magnitude of Gyroscope Body Signal Standard Deviation"
* "Mean of Magnitude of Gyroscope Body Jerk Mean"
* "Mean of Magnitude of Gyroscope Body Jerk Standard Deviation"
* "Mean of Fast Fourier Transform of Accelerometer Body Signal Mean in the X direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Signal Mean in the Y direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Signal Mean in the Z direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation in the X direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation in the Y direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation in the Z direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Jerk Mean in the X direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Jerk Mean in the Y direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Jerk Mean in the Z direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation in the X direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation in the Y direction"
* "Mean of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation in the Z direction"
* "Mean of Fast Fourier Transform of Gyroscope Body Signal Mean in the X direction"
* "Mean of Fast Fourier Transform of Gyroscope Body Signal Mean in the Y direction"
* "Mean of Fast Fourier Transform of Gyroscope Body Signal Mean in the Z direction"
* "Mean of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation in the X direction"
* "Mean of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation in the Y direction"
* "Mean of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation in the Z direction"
* "Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Signal Mean"
* "Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation"
* "Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Jerk Mean"
* "Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation"
* "Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Signal Mean"
* "Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation"
* "Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Jerk Mean"
* "Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Jerk Standard Deviation"

