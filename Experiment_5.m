% Semester project "Robotic reproduction of OMR and rheotaxis"
% BioRob - EPFL

% This script has been used to process the log files obtained while
% performing the experiment "Angular positions of the motors" described in
% the report (fifth experiment presented)

% Experiment realized with forward binocular stimulation
% Probability of a left turn: 0.268
% Probability of a forward bout: 0.466
% Probability of a right turn: 0.265
% Bouts realized during the experiment: -1 0 -1 -1 0 0 0 1 1 1
% (-1 -> left turn | 0 -> swim forward | 1 -> turn right)

clear
clc

[MOTOR0] = textread("LOGFILES/Experiment 5/log_fileMOTOR0.txt", "%f" ,-1);
[MOTOR1] = textread("LOGFILES/Experiment 5/log_fileMOTOR1.txt", "%f" ,-1);
[MOTOR2] = textread("LOGFILES/Experiment 5/log_fileMOTOR2.txt", "%f" ,-1);
[MOTOR3] = textread("LOGFILES/Experiment 5/log_fileMOTOR3.txt", "%f" ,-1);
[MOTOR4] = textread("LOGFILES/Experiment 5/log_fileMOTOR4.txt", "%f" ,-1);
[MOTOR5] = textread("LOGFILES/Experiment 5/log_fileMOTOR5.txt", "%f" ,-1);
[MOTOR6] = textread("LOGFILES/Experiment 5/log_fileMOTOR6.txt", "%f" ,-1);
[MOTOR7] = textread("LOGFILES/Experiment 5/log_fileMOTOR7.txt", "%f" ,-1);
[MOTOR8] = textread("LOGFILES/Experiment 5/log_fileMOTOR8.txt", "%f" ,-1);

MOTOR0 = MOTOR0(1:1830);
MOTOR1 = MOTOR1(1:1830);
MOTOR2 = MOTOR2(1:1830);
MOTOR3 = MOTOR3(1:1830);
MOTOR4 = MOTOR4(1:1830);
MOTOR5 = MOTOR5(1:1830);
MOTOR6 = MOTOR6(1:1830);
MOTOR7 = MOTOR7(1:1830);
MOTOR8 = MOTOR8(1:1830);

time = 0:0.06:1829*0.06;


figure(1)
plot(time, MOTOR0, time, MOTOR1, time, MOTOR2)
xlabel('Time [s]', 'FontSize', 22)
ylabel('Angular position [rad]', 'FontSize', 22)
legend('Angular position of motor 1', 'Angular position of motor 2','Angular position of motor 3', 'FontSize', 22, 'location', 'best')
set(gca, 'FontSize', 18);
grid on