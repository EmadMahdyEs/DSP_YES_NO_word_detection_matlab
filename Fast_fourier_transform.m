function [E,Y] = Fast_fourier_transform(y)
    D=fft(y)/numel(y);                               %numel is number of array elements
    Y=D.*conj(D);                                    % Discrete Fourier transform of data (DFT)
    E=sum(Y);
end