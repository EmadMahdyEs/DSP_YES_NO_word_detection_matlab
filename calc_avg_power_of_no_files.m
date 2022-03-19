function average_power = calc_avg_power_of_no_files()
    sum_of_energies=0;
    for i=1:1:24
        file_name= strcat('./ProjectSounds/GoodNo/n',int2str(i),'.wav');
        [y,Fs] = audioread(file_name);
        E = filter_and_FFT_func(y);
        sum_of_energies=sum_of_energies+E;
    end
    average_power=sum_of_energies/24;
end