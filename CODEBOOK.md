The measurments for this datset come from the accelerometer and gyroscope 3-axial raw signals in the X, Y and Z directions. 
These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 



Besides the first two variables, all variables are measurements from the above procudure and 
were named so that the meaning is self-explanatory.
The following are the variables of the tidy dataset:

"activity" - a factor variable with levels WALKING,WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
"subject" - a factor variable with levels 1-30 for the 30 subjects in the smartphone experiment
"Mean of Accelerometer Body Signal Mean in the X direction"
"Mean of Accelerometer Body Signal Mean in the Y direction"
"Mean of Accelerometer Body Signal Mean in the Z direction"
"Mean of Accelerometer Body Signal Standard Deviation in the X direction"
"Mean of Accelerometer Body Signal Standard Deviation in the Y direction"
"Mean of Accelerometer Body Signal Standard Deviation in the Z direction"
"Mean of Accelerometer Gravity Signal Mean in the X direction"
"Mean of Accelerometer Gravity Signal Mean in the Y direction"
"Mean of Accelerometer Gravity Signal Mean in the Z direction"
"Mean of Accelerometer Gravity Signal Standard Deviation in the X direction"
"Mean of Accelerometer Gravity Signal Standard Deviation in the Y direction"
"Mean of Accelerometer Gravity Signal Standard Deviation in the Z direction"
"Mean of Accelerometer Body Jerk Mean in the X direction"
"Mean of Accelerometer Body Jerk Mean in the Y direction"
"Mean of Accelerometer Body Jerk Mean in the Z direction"
"Mean of Accelerometer Body Jerk Standard Deviation in the X direction"
"Mean of Accelerometer Body Jerk Standard Deviation in the Y direction"
"Mean of Accelerometer Body Jerk Standard Deviation in the Z direction"
"Mean of Gyroscope Body Signal Mean in the X direction"
"Mean of Gyroscope Body Signal Mean in the Y direction"
"Mean of Gyroscope Body Signal Mean in the Z direction"
"Mean of Gyroscope Body Signal Standard Deviation in the X direction"
"Mean of Gyroscope Body Signal Standard Deviation in the Y direction"
"Mean of Gyroscope Body Signal Standard Deviation in the Z direction"
"Mean of Gyroscope Body Jerk Mean in the X direction"
"Mean of Gyroscope Body Jerk Mean in the Y direction"
"Mean of Gyroscope Body Jerk Mean in the Z direction"
"Mean of Gyroscope Body Jerk Standard Deviation in the X direction"
"Mean of Gyroscope Body Jerk Standard Deviation in the Y direction"
"Mean of Gyroscope Body Jerk Standard Deviation in the Z direction"
"Mean of Magnitude of Accelerometer Body Signal Mean"
"Mean of Magnitude of Accelerometer Body Signal Standard Deviation"
"Mean of Magnitude of Accelerometer Gravity Signal Mean"
"Mean of Magnitude of Accelerometer Gravity Signal Standard Deviation"
"Mean of Magnitude of Accelerometer Body Jerk Mean"
"Mean of Magnitude of Accelerometer Body Jerk Standard Deviation"
"Mean of Magnitude of Gyroscope Body Signal Mean"
"Mean of Magnitude of Gyroscope Body Signal Standard Deviation"
"Mean of Magnitude of Gyroscope Body Jerk Mean"
"Mean of Magnitude of Gyroscope Body Jerk Standard Deviation"
"Mean of Fast Fourier Transform of Accelerometer Body Signal Mean in the X direction"
"Mean of Fast Fourier Transform of Accelerometer Body Signal Mean in the Y direction"
"Mean of Fast Fourier Transform of Accelerometer Body Signal Mean in the Z direction"
"Mean of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation in the X direction"
"Mean of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation in the Y direction"
"Mean of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation in the Z direction"
"Mean of Fast Fourier Transform of Accelerometer Body Jerk Mean in the X direction"
"Mean of Fast Fourier Transform of Accelerometer Body Jerk Mean in the Y direction"
"Mean of Fast Fourier Transform of Accelerometer Body Jerk Mean in the Z direction"
"Mean of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation in the X direction"
"Mean of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation in the Y direction"
"Mean of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation in the Z direction"
"Mean of Fast Fourier Transform of Gyroscope Body Signal Mean in the X direction"
"Mean of Fast Fourier Transform of Gyroscope Body Signal Mean in the Y direction"
"Mean of Fast Fourier Transform of Gyroscope Body Signal Mean in the Z direction"
"Mean of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation in the X direction"
"Mean of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation in the Y direction"
"Mean of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation in the Z direction"
"Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Signal Mean"
"Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Signal Standard Deviation"
"Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Jerk Mean"
"Mean of Magnitude of Fast Fourier Transform of Accelerometer Body Jerk Standard Deviation"
"Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Signal Mean"
"Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Signal Standard Deviation"
"Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Jerk Mean"
"Mean of Magnitude of Fast Fourier Transform of Gyroscope Body Jerk Standard Deviation"

