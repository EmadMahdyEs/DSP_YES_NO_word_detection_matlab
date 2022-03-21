clear;
clc;

%[R_yes_vect,R_no_vect] = calc_highToLow_signal_energy_in_yes_and_no_files();
%R_yes_mean = mean(R_yes_vect );
%R_no_mean = mean(R_no_vect );
%yes_to_no_R=R_yes_mean/R_no_mean;

%min_of_Y=min(R_yes_vect);
%max_of_N=max(R_no_vect);



%R_Others = calc_energies_in_Others_files();

%[check_Y,check_N]=checka_all_good_yes_and_no_files();

%E_others=calc_energies_in_Others_files()

T=.01;

check_yes_or_no('./ProjectSounds_noSine/GoodYes/y7.wav',T)
check_yes_or_no('./ProjectSounds_noSine/GoodNo/n7.wav',T)
check_yes_or_no('./ProjectSounds_noSine/Other/n8.wav',T)



