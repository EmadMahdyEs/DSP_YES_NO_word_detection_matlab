function R_Others = calc_energies_in_Others_files()
    files = dir('./ProjectSounds_noSine/Other/*.wav') ; 
    for i=1:1:length(files)
        current_file=strcat('./ProjectSounds_noSine/Other/', files(i).name);
        [y,Fs] = audioread(current_file);
        R_Others(i) =highToLow_signal_energy_ratio_func(y);
    end
end