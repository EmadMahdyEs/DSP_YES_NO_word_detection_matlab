function E = filter_and_FFT_func(yo1)
    %step 1: padding the signal with zero to the longest signal
    
    yo1 = pad_signal_with_zeros_to_the_longest(yo1);

    %step 2: filtering the signal
    y=Custom_bandpass_filter(yo1);
    
    %step 3: Calculate the FFT and the power
    D=fft(y)/numel(y);                               %numel is number of array elements
    Y=D.*conj(D);                                    % Discrete Fourier transform of data (DFT)
    E=sum(Y);
end