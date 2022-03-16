function yes_or_no = check_yes_or_no(file_name)
    scale_factor=1000000;
    [y,Fs] = audioread(file_name);
    E = filter_and_FFT_func(y)*scale_factor;

    if E<20
        yes_or_no='NO';
    else
        yes_or_no='YES';
    end


end