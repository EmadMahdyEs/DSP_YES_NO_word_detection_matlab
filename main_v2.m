clear;
clc;
path='noSine\noSine\Good\';

longest_clip=find_longest_clip(path);
disp("no files average")
calc_avg_power_of_no_files(path,longest_clip)
disp("yes files average")
calc_avg_power_of_yes_files(path,longest_clip)

