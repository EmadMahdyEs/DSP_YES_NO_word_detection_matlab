function y = Custom_bandpass_filter(yo1)
    % bandpass filter using lowpass and highpass filters
    LP_object=low_pass_filter_2;
    yo2=filter(LP_object,yo1);
    HP_object=high_pass_filter_2;
    y=filter(HP_object,yo2);
end