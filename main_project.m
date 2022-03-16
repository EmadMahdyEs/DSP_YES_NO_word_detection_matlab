clear;
clc;
scale_factor=1000000;
No_files_path= 'ProjectSounds\GoodNo\';
Yes_files_path='ProjectSounds\GoodYes\';
Others_files_path='ProjectSounds\Others\';

longest_signal=find_longest_clip_in_project_sounds();
yes_avg=calc_avg_power_of_yes_files(longest_signal)*scale_factor;
no_avg=calc_avg_power_of_no_files(longest_signal)*scale_factor;

check_yes_or_no('ProjectSounds\Others\n2.wav',longest_signal)


check_yes_or_no('ProjectSounds\Others\y1.wav',longest_signal)