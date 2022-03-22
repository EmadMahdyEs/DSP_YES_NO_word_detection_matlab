function fig = FFT_Plot_without_perform_FFT(Y,Fs,nsamples)
    
    % freq is used to plot signal in time domain   /1000 to convert freq to kHz
    freq =(linspace(0,Fs/2,nsamples/2)) /1000;
    maxFreqToPlot=12000;
    %maxFreqToPlot=Fs/2;
    lmt=maxFreqToPlot/Fs*nsamples;
    fig=semilogy(freq(1:lmt),Y(1:lmt));
    title('Power Spectrum of Audio Signal'); xlabel('Frequency (kHz)'); ylabel('|Y(f)|^2');
    grid on
end