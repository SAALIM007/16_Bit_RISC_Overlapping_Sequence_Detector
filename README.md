# Lab_3_Sequence_Detector_Phase_2
Project Overview:  
Second Phase implementation of sequence detector using Verilog.  
  
This project is a modified version of Lab_2. In this project, I modified both the Moore and Mealy implementations to be overlapping sequence detectors. As a result, the sequence detector has an input X that is used to detect the overlapping sequence of "101101". The output Z becomes 1 when the proper overlapping input sequence is received and is 0 otherwise. A "mode" input (M) specifies which implementation is being used: If M=0, a "Mealy" implementation is chosen and if M=1, then the "Moore" implementation is chosen.

Here is a schematic of what my project looks like: 
![ScreenShot](https://cloud.githubusercontent.com/assets/14812721/24822557/d2adc588-1baa-11e7-888a-42c031fb80a8.jpg)
    
Dependencies:    
This project was created using Xilinx ISE Project Navigator Version: 14.7.   
  
  
Project Verification:  
The verification for this project was done by running the circuit through the overlapping_sequence_detector_tb() module. This module feeds the sequence detector with an appropriate test sequence value and verifys that the sequence detector is in fact outputting the correct values.
