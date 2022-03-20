function E_Others = calc_energies_in_Others_files()
    scale_factor=1e7;
    files = dir('./ProjectSounds/Others/*.wav') ; 
    for i=1:1:length(files)
        current_file=strcat('./ProjectSounds/Others/', files(i).name);
        [y,Fs] = audioread(current_file);
        E_Others(i) = filter_and_FFT_func(y)*scale_factor;
    end
end