function E = filter_and_FFT_func(yo1)
    
    %step 1: padding the signal with zero to the longest signal 
    longest_signal=26090;
    for k=length(yo1)+1:1:longest_signal
        yo1(k)=0;
    end

    %step 2: filtering the signal
    LP_object=low_pass_filter_function;
    yo2=filter(LP_object,yo1);
    HP_object=high_pass_filter_function;
    y=filter(HP_object,yo2);
    
    %step 3: Calculate the FFT and the power
    D=fft(y)/numel(y);                               %numel is number of array elements
    Y=D.*conj(D);                                    % Discrete Fourier transform of data (DFT)
    E=sum(Y);
end