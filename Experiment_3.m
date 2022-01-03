% Semester project "Robotic reproduction of OMR and rheotaxis"
% BioRob - EPFL

% This script has been used to process the log files obtained while
% performing the experiment "Direction selectivity of direction selective
% cells in pretectum" described in the report (first experiment presented)

clear
clc

[BWRPTL0] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCL0.txt", "%f" ,-1);
[BWRPTL1] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCL1.txt", "%f" ,-1);
[BWRPTL2] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCL2.txt", "%f" ,-1);
[BWRPTL3] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCL3.txt", "%f" ,-1);
[BWLPTR0] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCR0.txt", "%f" ,-1);
[BWLPTR1] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCR1.txt", "%f" ,-1);
[BWLPTR2] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCR2.txt", "%f" ,-1);
[BWLPTR3] = textread("LOGFILES/Experiment 3/BWlog_fileDSGCR3.txt", "%f" ,-1);

[FWRPTL0] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCL0.txt", "%f" ,-1);
[FWRPTL1] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCL1.txt", "%f" ,-1);
[FWRPTL2] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCL2.txt", "%f" ,-1);
[FWRPTL3] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCL3.txt", "%f" ,-1);
[FWLPTR0] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCR0.txt", "%f" ,-1);
[FWLPTR1] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCR1.txt", "%f" ,-1);
[FWLPTR2] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCR2.txt", "%f" ,-1);
[FWLPTR3] = textread("LOGFILES/Experiment 3/FWlog_fileDSGCR3.txt", "%f" ,-1);

[UPRPTL0] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCL0.txt", "%f" ,-1);
[UPRPTL1] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCL1.txt", "%f" ,-1);
[UPRPTL2] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCL2.txt", "%f" ,-1);
[UPRPTL3] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCL3.txt", "%f" ,-1);
[UPLPTR0] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCR0.txt", "%f" ,-1);
[UPLPTR1] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCR1.txt", "%f" ,-1);
[UPLPTR2] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCR2.txt", "%f" ,-1);
[UPLPTR3] = textread("LOGFILES/Experiment 3/UPlog_fileDSGCR3.txt", "%f" ,-1);

[DOWNRPTL0] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCL0.txt", "%f" ,-1);
[DOWNRPTL1] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCL1.txt", "%f" ,-1);
[DOWNRPTL2] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCL2.txt", "%f" ,-1);
[DOWNRPTL3] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCL3.txt", "%f" ,-1);
[DOWNLPTR0] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCR0.txt", "%f" ,-1);
[DOWNLPTR1] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCR1.txt", "%f" ,-1);
[DOWNLPTR2] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCR2.txt", "%f" ,-1);
[DOWNLPTR3] = textread("LOGFILES/Experiment 3/DOWNlog_fileDSGCR3.txt", "%f" ,-1);

[SXBWRPTL0] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCL0.txt", "%f" ,-1);
[SXBWRPTL1] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCL1.txt", "%f" ,-1);
[SXBWRPTL2] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCL2.txt", "%f" ,-1);
[SXBWRPTL3] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCL3.txt", "%f" ,-1);
[SXBWLPTR0] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCR0.txt", "%f" ,-1);
[SXBWLPTR1] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCR1.txt", "%f" ,-1);
[SXBWLPTR2] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCR2.txt", "%f" ,-1);
[SXBWLPTR3] = textread("LOGFILES/Experiment 3/SXBWlog_fileDSGCR3.txt", "%f" ,-1);

[SXFWRPTL0] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCL0.txt", "%f" ,-1);
[SXFWRPTL1] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCL1.txt", "%f" ,-1);
[SXFWRPTL2] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCL2.txt", "%f" ,-1);
[SXFWRPTL3] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCL3.txt", "%f" ,-1);
[SXFWLPTR0] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCR0.txt", "%f" ,-1);
[SXFWLPTR1] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCR1.txt", "%f" ,-1);
[SXFWLPTR2] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCR2.txt", "%f" ,-1);
[SXFWLPTR3] = textread("LOGFILES/Experiment 3/SXFWlog_fileDSGCR3.txt", "%f" ,-1);

[DXBWRPTL0] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCL0.txt", "%f" ,-1);
[DXBWRPTL1] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCL1.txt", "%f" ,-1);
[DXBWRPTL2] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCL2.txt", "%f" ,-1);
[DXBWRPTL3] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCL3.txt", "%f" ,-1);
[DXBWLPTR0] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCR0.txt", "%f" ,-1);
[DXBWLPTR1] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCR1.txt", "%f" ,-1);
[DXBWLPTR2] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCR2.txt", "%f" ,-1);
[DXBWLPTR3] = textread("LOGFILES/Experiment 3/DXBWlog_fileDSGCR3.txt", "%f" ,-1);

[DXFWRPTL0] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCL0.txt", "%f" ,-1);
[DXFWRPTL1] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCL1.txt", "%f" ,-1);
[DXFWRPTL2] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCL2.txt", "%f" ,-1);
[DXFWRPTL3] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCL3.txt", "%f" ,-1);
[DXFWLPTR0] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCR0.txt", "%f" ,-1);
[DXFWLPTR1] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCR1.txt", "%f" ,-1);
[DXFWLPTR2] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCR2.txt", "%f" ,-1);
[DXFWLPTR3] = textread("LOGFILES/Experiment 3/DXFWlog_fileDSGCR3.txt", "%f" ,-1);


mean_BWRPTL0 = mean(BWRPTL0);
mean_BWRPTL1 = mean(BWRPTL1);
mean_BWRPTL2 = mean(BWRPTL2);
mean_BWRPTL3 = mean(BWRPTL3);
mean_BWLPTR0 = mean(BWLPTR0);
mean_BWLPTR1 = mean(BWLPTR1);
mean_BWLPTR2 = mean(BWLPTR2);
mean_BWLPTR3 = mean(BWLPTR3);

mean_FWRPTL0 = mean(FWRPTL0);
mean_FWRPTL1 = mean(FWRPTL1);
mean_FWRPTL2 = mean(FWRPTL2);
mean_FWRPTL3 = mean(FWRPTL3);
mean_FWLPTR0 = mean(FWLPTR0);
mean_FWLPTR1 = mean(FWLPTR1);
mean_FWLPTR2 = mean(FWLPTR2);
mean_FWLPTR3 = mean(FWLPTR3);

mean_UPRPTL0 = mean(UPRPTL0);
mean_UPRPTL1 = mean(UPRPTL1);
mean_UPRPTL2 = mean(UPRPTL2);
mean_UPRPTL3 = mean(UPRPTL3);
mean_UPLPTR0 = mean(UPLPTR0);
mean_UPLPTR1 = mean(UPLPTR1);
mean_UPLPTR2 = mean(UPLPTR2);
mean_UPLPTR3 = mean(UPLPTR3);

mean_DOWNRPTL0 = mean(DOWNRPTL0);
mean_DOWNRPTL1 = mean(DOWNRPTL1);
mean_DOWNRPTL2 = mean(DOWNRPTL2);
mean_DOWNRPTL3 = mean(DOWNRPTL3);
mean_DOWLPTNR0 = mean(DOWNLPTR0);
mean_DOWLPTNR1 = mean(DOWNLPTR1);
mean_DOWLPTNR2 = mean(DOWNLPTR2);
mean_DOWLPTNR3 = mean(DOWNLPTR3);

mean_SXBWRPTL0 = mean(SXBWRPTL0);
mean_SXBWRPTL1 = mean(SXBWRPTL1);
mean_SXBWRPTL2 = mean(SXBWRPTL2);
mean_SXBWRPTL3 = mean(SXBWRPTL3);
mean_SXBWLPTR0 = mean(SXBWLPTR0);
mean_SXBWLPTR1 = mean(SXBWLPTR1);
mean_SXBWLPTR2 = mean(SXBWLPTR2);
mean_SXBWLPTR3 = mean(SXBWLPTR3);

mean_SXFWRPTL0 = mean(SXFWRPTL0);
mean_SXFWRPTL1 = mean(SXFWRPTL1);
mean_SXFWRPTL2 = mean(SXFWRPTL2);
mean_SXFWRPTL3 = mean(SXFWRPTL3);
mean_SXFWLPTR0 = mean(SXFWLPTR0);
mean_SXFWLPTR1 = mean(SXFWLPTR1);
mean_SXFWLPTR2 = mean(SXFWLPTR2);
mean_SXFWLPTR3 = mean(SXFWLPTR3);

mean_DXBWRPTL0 = mean(DXBWRPTL0);
mean_DXBWRPTL1 = mean(DXBWRPTL1);
mean_DXBWRPTL2 = mean(DXBWRPTL2);
mean_DXBWRPTL3 = mean(DXBWRPTL3);
mean_DXBWLPTR0 = mean(DXBWLPTR0);
mean_DXBWLPTR1 = mean(DXBWLPTR1);
mean_DXBWLPTR2 = mean(DXBWLPTR2);
mean_DXBWLPTR3 = mean(DXBWLPTR3);

mean_DXFWRPTL0 = mean(DXFWRPTL0);
mean_DXFWRPTL1 = mean(DXFWRPTL1);
mean_DXFWRPTL2 = mean(DXFWRPTL2);
mean_DXFWRPTL3 = mean(DXFWRPTL3);
mean_DXFWLPTR0 = mean(DXFWLPTR0);
mean_DXFWLPTR1 = mean(DXFWLPTR1);
mean_DXFWLPTR2 = mean(DXFWLPTR2);
mean_DXFWLPTR3 = mean(DXFWLPTR3);