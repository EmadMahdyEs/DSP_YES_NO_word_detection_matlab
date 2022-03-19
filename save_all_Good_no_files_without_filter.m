function ret=save_all_Good_no_files_without_filter()
    Longest_signal = find_longest_clip_in_project_sounds();
    for i=1:1:24
        file_name= strcat('./ProjectSounds/GoodNo/n',int2str(i),'.wav');
        [y,Fs] = audioread(file_name);
        y=pad_signal_with_zeros_to_the_longest(y,Longest_signal);
        fig=FFT_Plot(y,Fs);
        save_path=strcat('./NO_FFT_figures/n',int2str(i),' FFT.png');
        saveas(fig,save_path);
    end
end