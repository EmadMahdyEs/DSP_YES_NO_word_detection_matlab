function [R_yes,R_no] = calc_highToLow_signal_energy_in_yes_and_no_files()
    for i=1:1:24
        
%         yes_file_name= strcat('./ProjectSounds/GoodYes/y',int2str(i),'.wav');
%         no_file_name= strcat('./ProjectSounds/GoodNo/n',int2str(i),'.wav');
        yes_file_name= strcat('./ProjectSounds_noSine/GoodYes/y',int2str(i),'.wav');
        no_file_name= strcat('./ProjectSounds_noSine/GoodNo/n',int2str(i),'.wav');
        [y_yes,Fs] = audioread(yes_file_name);
        R_yes(i) = highToLow_signal_energy_ratio_func(y_yes);
        [y_no,Fs] = audioread(no_file_name);
        R_no(i) =  highToLow_signal_energy_ratio_func(y_no);
    end
end