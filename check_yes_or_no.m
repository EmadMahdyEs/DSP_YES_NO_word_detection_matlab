function yes_or_no = check_yes_or_no(file_name,T)
   
    [y,Fs] = audioread(file_name);
    R=highToLow_signal_energy_ratio_func(y);
    if R<T
        yes_or_no='N';
    else
        yes_or_no='Y';
    end
end