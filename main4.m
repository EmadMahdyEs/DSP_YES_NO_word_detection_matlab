clear;
clc;
scale_factor=1000000;
path='noSine\noSine\Good\';
yes_avg=calc_avg_power_of_yes_files(path)*scale_factor;
no_avg=calc_avg_power_of_no_files(path)*scale_factor;

n1_path='noSine\noSine\Good\n1.wav';
check_yes_or_no(n1_path)

y5_path='noSine\noSine\Good\y5.wav';
check_yes_or_no(y5_path)