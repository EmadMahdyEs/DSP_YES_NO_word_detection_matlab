function y = pad_signal_with_zeros_to_the_longest(y)
    %longest_file=26090;
    longest_signal=find_longest_clip_in_project_sounds();
    for k=length(y)+1:1:longest_signal
        y(k)=0;
    end
end