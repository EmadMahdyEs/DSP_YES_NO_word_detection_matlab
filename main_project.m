clear;
clc;
scale_factor=1e7;
No_files_path = './ProjectSounds/GoodNo/';
Yes_files_path='./ProjectSounds/GoodYes/';
Others_files_path='./ProjectSounds/Others/';


yes_avg= calc_avg_power_of_yes_files()*scale_factor;
no_avg = calc_avg_power_of_no_files()*scale_factor;

[E_yes,E_no] = calc_energies_in_yes_and_no_files()


%check_yes_or_no('./ProjectSounds/Others/n2.wav')
%check_yes_or_no('./ProjectSounds/Others/y1.wav')