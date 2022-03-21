function R = highToLow_signal_energy_ratio_func(yo)
    %step 1: padding the signal with zero to the longest signal
    
    yo = pad_signal_with_zeros_to_the_longest(yo);

    %step 2: filtering the signal and calaculate ratio
 
 
    LP_object=low_pass_filter_2;
    y_low=filter(LP_object,yo);
    E_low=Fast_fourier_transform(y_low);
    

    LP_object=high_pass_filter_2;
    y_high=filter(LP_object,yo);
    E_high=Fast_fourier_transform(y_high);
    
    R=E_high/E_low;
    
end