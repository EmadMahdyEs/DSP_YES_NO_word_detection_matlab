function [E_yes,E_no] = calc_energies_in_yes_and_no_files()
    scale_factor=1e7;
    for i=1:1:24
        yes_file_name= strcat('./ProjectSounds/GoodYes/y',int2str(i),'.wav');
        no_file_name= strcat('./ProjectSounds/GoodNo/n',int2str(i),'.wav');
        [y,Fs] = audioread(yes_file_name);
        E_yes(i) = filter_and_FFT_func(y)*scale_factor;
        [y,Fs] = audioread(no_file_name);
        E_no(i) = filter_and_FFT_func(y)*scale_factor;
    end
end