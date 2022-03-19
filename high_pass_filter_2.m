function Hd = high_pass_filter_2
%HIGH_PASS_FILTER_2 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.11 and Signal Processing Toolbox 8.7.
% Generated on: 19-Mar-2022 20:43:44

% Equiripple Highpass filter designed using the FIRPM function.

% All frequency values are in Hz.
Fs = 24000;  % Sampling Frequency

Fstop = 5000;            % Stopband Frequency
Fpass = 5500;            % Passband Frequency
Dstop = 0.0001;          % Stopband Attenuation
Dpass = 0.057501127785;  % Passband Ripple
dens  = 20;              % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fstop, Fpass]/(Fs/2), [0 1], [Dstop, Dpass]);

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, Fo, Ao, W, {dens});
Hd = dfilt.dffir(b);

% [EOF]