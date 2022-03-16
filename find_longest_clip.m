function Longest = find_longest_clip(path)
    Longest=0;
    for i=1:1:24
        file_name= strcat(path,'n',int2str(i),'.wav');
        [y,Fs] = audioread(file_name);
        if length(y)>Longest
            Longest=length(y);
        end
    end
    for i=1:1:25
        file_name= strcat(path,'y',int2str(i),'.wav');
        [y,Fs] = audioread(file_name);
        if length(y)>Longest
            Longest=length(y);
        end
    end
end