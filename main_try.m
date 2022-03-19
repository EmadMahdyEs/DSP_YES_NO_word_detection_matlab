clear;
clc;

% [y,Fs]=audioread('./ProjectSounds/GoodNo/n9.wav');
% figure(1);
% fig=FFT_Plot(y,Fs);
% saveas(fig,'./NO_FFT_figures/n9 FFT.png');

save_all_Good_no_files_without_filter()
save_all_Good_yes_files_without_filter()


% figure(2);
% y=Custom_bandpass_filter(y);
% Y=FFT_Plot(y,Fs);
