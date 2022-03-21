function [R_yes,R_no] = calc_highToLow_signal_energy_in_yes_and_no_files()
    files_Y = dir('./ProjectSounds_noSine/GoodYes/*.wav') ; 
    files_N = dir('./ProjectSounds_noSine/GoodNo/*.wav') ; 

    for i=1:1:length(files_Y)
        current_file=strcat('./ProjectSounds_noSine/GoodYes/', files_Y(i).name);
        [y_yes,Fs] = audioread(current_file);
        R_yes(i) = highToLow_signal_energy_ratio_func(y_yes);
    end
    
    for i=1:1:length(files_N)
        current_file=strcat('./ProjectSounds_noSine/GoodNo/', files_N(i).name);
        [y_no,Fs] = audioread(current_file);
        R_no(i) =  highToLow_signal_energy_ratio_func(y_no);
    end
end