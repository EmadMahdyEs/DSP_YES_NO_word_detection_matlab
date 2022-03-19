function E=FFT_of_Sound_and_plot(file_path)
    [y,Fs] = audioread(file_path);
    y=pad_signal_with_zeros_to_the_longest(y);
    nsamples=length(y); 
    freq =(linspace(0,Fs/2,nsamples/2)) /1000;             % freq is used to plot signal in time domain   /1000 to convert freq to kHz
    maxFreqToPlot=12000;
    lmt=maxFreqToPlot/Fs*nsamples;
    
    % Calculate the FFT and the power
    D=fft(y)/numel(y);                       %numel is number of array elements % Discrete Fourier transform of data (DFT)
    Y=D.*conj(D);
    E=sum(Y);
    semilogy(freq(1:lmt),Y(1:lmt))
    title('Power Spectrum of Audio Signal'); xlabel('Frequency (kHz)'); ylabel('|Y(f)|^2');
    grid on
end


% some notes %
% Y = fft(X) computes the discrete Fourier transform (DFT) of X using a fast Fourier transform (FFT) algorithm.
% semilogy(X,Y) plots x- and y-coordinates using a linear scale on the x-axis and a base-10 logarithmic scale on the y-axis.