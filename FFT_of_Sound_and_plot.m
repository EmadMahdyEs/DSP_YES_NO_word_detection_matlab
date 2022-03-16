function E=FFT_of_Sound_and_plot(file_path)
    %file_name= strcat(path,'n',int2str(i),'.wav');


    
    [yo1,Fs] = audioread(file_path);

    
    LP_object=low_pass_filter_function;
    yo2=filter(LP_object,yo1);
    
    HP_object=high_pass_filter_function;
    y=filter(HP_object,yo2);

    
    longest_file=26090;
    for k=length(y)+1:1:longest_file
        y(k)=0;
    end
    dt = 1/Fs; t = 0:dt:(length(y)*dt)-dt;
    nsamples=length(y); 
    freq=linspace(0,Fs/2,nsamples/2)/1000;
    maxFreqToPlot=12000;
    lmt=maxFreqToPlot/Fs*nsamples;
    % Calculate the FFT and the power
    D=fft(y)/numel(y);                       %numel is number of array elements % Discrete Fourier transform of data (DFT)
    Y=D.*conj(D);
    E=sum(Y);
    %subplot(1,1,1)
    semilogy(freq(1:lmt),Y(1:lmt))
    title('Power Spectrum of Audio Signal'); xlabel('Frequency (kHz)'); ylabel('|Y(f)|^2');
    grid on
end