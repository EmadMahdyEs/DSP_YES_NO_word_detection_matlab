function [Yes_mean_Y,No_mean_Y] = mean_FFT_for_all_YES_NO_files()
    files_Y = dir('./ProjectSounds_noSine/GoodYes/*.wav') ; 
    files_N = dir('./ProjectSounds_noSine/GoodNo/*.wav') ; 
    for i=1:1:length(files_Y)
        current_file=strcat('./ProjectSounds_noSine/GoodYes/', files_Y(i).name);
        [y_yes,Fs] = audioread(current_file);
        y_yes=pad_signal_with_zeros_to_the_longest(y_yes);
        Yes_Y_vect(i,:)=Fast_fourier_transform_v2(y_yes);
    end
   
    for i=1:1:length(files_N)
        current_file=strcat('./ProjectSounds_noSine/GoodNo/', files_N(i).name);
        [y_no,Fs] = audioread(current_file);
        y_no=pad_signal_with_zeros_to_the_longest(y_no);
        No_Y_vect(i,:)=Fast_fourier_transform_v2(y_no);    
    end
   
    Yes_mean_Y=mean(Yes_Y_vect,1);
    No_mean_Y=mean(No_Y_vect,1);

end