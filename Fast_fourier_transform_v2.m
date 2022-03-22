function Y = Fast_fourier_transform_v2(y)
    D=fft(y)/numel(y);                               %numel is number of array elements
    Y=D.*conj(D);                                    % Discrete Fourier transform of data (DFT)
end