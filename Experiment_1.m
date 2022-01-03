% Semester project "Robotic reproduction of OMR and rheotaxis"
% BioRob - EPFL

% This script has been used to process the log files obtained while
% performing the experiment "Values assumed by the left nMLF, right nMLF,
% left LHB, right LHB" described in the report (third experiment presented)

clear
clc

[BWLLHB] = textread("LOGFILES/Experiment 1/BWlog_fileLLHB.txt", "%f" ,-1);
[BWLMLF] = textread("LOGFILES/Experiment 1/BWlog_fileLMLF.txt", "%f" ,-1);
[BWRLHB] = textread("LOGFILES/Experiment 1/BWlog_fileRLHB.txt", "%f" ,-1);
[BWRMLF] = textread("LOGFILES/Experiment 1/BWlog_fileRMLF.txt", "%f" ,-1);
[DOWNLLHB] = textread("LOGFILES/Experiment 1/DOWNlog_fileLLHB.txt", "%f" ,-1);
[DOWNLMLF] = textread("LOGFILES/Experiment 1/DOWNlog_fileLMLF.txt", "%f" ,-1);
[DOWNRLHB] = textread("LOGFILES/Experiment 1/DOWNlog_fileRLHB.txt", "%f" ,-1);
[DOWNRMLF] = textread("LOGFILES/Experiment 1/DOWNlog_fileRMLF.txt", "%f" ,-1);
[FWLLHB] = textread("LOGFILES/Experiment 1/FWlog_fileLLHB.txt", "%f" ,-1);
[FWLMLF] = textread("LOGFILES/Experiment 1/FWlog_fileLMLF.txt", "%f" ,-1);
[FWRLHB] = textread("LOGFILES/Experiment 1/FWlog_fileRLHB.txt", "%f" ,-1);
[FWRMLF] = textread("LOGFILES/Experiment 1/FWlog_fileRMLF.txt", "%f" ,-1);
[STILLLLHB] = textread("LOGFILES/Experiment 1/STILLlog_fileLLHB.txt", "%f" ,-1);
[STILLLMLF] = textread("LOGFILES/Experiment 1/STILLlog_fileLMLF.txt", "%f" ,-1);
[STILLRLHB] = textread("LOGFILES/Experiment 1/STILLlog_fileRLHB.txt", "%f" ,-1);
[STILLRMLF] = textread("LOGFILES/Experiment 1/STILLlog_fileRMLF.txt", "%f" ,-1);
[UPLLHB] = textread("LOGFILES/Experiment 1/UPlog_fileLLHB.txt", "%f" ,-1);
[UPLMLF] = textread("LOGFILES/Experiment 1/UPlog_fileLMLF.txt", "%f" ,-1);
[UPRLHB] = textread("LOGFILES/Experiment 1/UPlog_fileRLHB.txt", "%f" ,-1);
[UPRMLF] = textread("LOGFILES/Experiment 1/UPlog_fileRMLF.txt", "%f" ,-1);
[SXBWLLHB] = textread("LOGFILES/Experiment 1/SXBWlog_fileLLHB.txt", "%f" ,-1);
[SXBWLMLF] = textread("LOGFILES/Experiment 1/SXBWlog_fileLMLF.txt", "%f" ,-1);
[SXBWRLHB] = textread("LOGFILES/Experiment 1/SXBWlog_fileRLHB.txt", "%f" ,-1);
[SXBWRMLF] = textread("LOGFILES/Experiment 1/SXBWlog_fileRMLF.txt", "%f" ,-1);
[SXFWLLHB] = textread("LOGFILES/Experiment 1/SXFWlog_fileLLHB.txt", "%f" ,-1);
[SXFWLMLF] = textread("LOGFILES/Experiment 1/SXFWlog_fileLMLF.txt", "%f" ,-1);
[SXFWRLHB] = textread("LOGFILES/Experiment 1/SXFWlog_fileRLHB.txt", "%f" ,-1);
[SXFWRMLF] = textread("LOGFILES/Experiment 1/SXFWlog_fileRMLF.txt", "%f" ,-1);
[DXBWLLHB] = textread("LOGFILES/Experiment 1/DXBWlog_fileLLHB.txt", "%f" ,-1);
[DXBWLMLF] = textread("LOGFILES/Experiment 1/DXBWlog_fileLMLF.txt", "%f" ,-1);
[DXBWRLHB] = textread("LOGFILES/Experiment 1/DXBWlog_fileRLHB.txt", "%f" ,-1);
[DXBWRMLF] = textread("LOGFILES/Experiment 1/DXBWlog_fileRMLF.txt", "%f" ,-1);
[DXFWLLHB] = textread("LOGFILES/Experiment 1/DXFWlog_fileLLHB.txt", "%f" ,-1);
[DXFWLMLF] = textread("LOGFILES/Experiment 1/DXFWlog_fileLMLF.txt", "%f" ,-1);
[DXFWRLHB] = textread("LOGFILES/Experiment 1/DXFWlog_fileRLHB.txt", "%f" ,-1);
[DXFWRMLF] = textread("LOGFILES/Experiment 1/DXFWlog_fileRMLF.txt", "%f" ,-1);

mean_BWLLHB = mean(BWLLHB);
mean_BWLMLF = mean(BWLMLF);
mean_BWRLHB = mean(BWRLHB);
mean_BWRMLF = mean(BWRMLF);
mean_DOWNLLHB = mean(DOWNLLHB);
mean_DOWNLMLF = mean(DOWNLMLF);
mean_DOWNRLHB = mean(DOWNRLHB);
mean_DOWNRMLF = mean(DOWNRMLF);
mean_FWLLHB = mean(FWLLHB);
mean_FWLMLF = mean(FWLMLF);
mean_FWRLHB = mean(FWRLHB);
mean_FWRMLF = mean(FWRMLF);
mean_STILLLLHB = mean(STILLLLHB);
mean_STILLLMLF = mean(STILLLMLF);
mean_STILLRLHB = mean(STILLRLHB);
mean_STILLRMLF = mean(STILLRMLF);
mean_UPLLHB = mean(UPLLHB);
mean_UPLMLF = mean(UPLMLF);
mean_UPRLHB = mean(UPRLHB);
mean_UPRMLF = mean(UPRMLF);
mean_SXBWLLHB = mean(SXBWLLHB);
mean_SXBWLMLF = mean(SXBWLMLF);
mean_SXBWRLHB = mean(SXBWRLHB);
mean_SXBWRMLF = mean(SXBWRMLF);
mean_SXFWLLHB = mean(SXFWLLHB);
mean_SXFWLMLF = mean(SXFWLMLF);
mean_SXFWRLHB = mean(SXFWRLHB);
mean_SXFWRMLF = mean(SXFWRMLF);
mean_DXBWLLHB = mean(DXBWLLHB);
mean_DXBWLMLF = mean(DXBWLMLF);
mean_DXBWRLHB = mean(DXBWRLHB);
mean_DXBWRMLF = mean(DXBWRMLF);
mean_DXFWLLHB = mean(DXFWLLHB);
mean_DXFWLMLF = mean(DXFWLMLF);
mean_DXFWRLHB = mean(DXFWRLHB);
mean_DXFWRMLF = mean(DXFWRMLF);