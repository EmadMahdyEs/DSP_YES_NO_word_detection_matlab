function [check_Y,check_N] = checka_all_good_yes_and_no_files()
    T=.01;
    for i=1:1:24
%         yes_file_name= strcat('./ProjectSounds/GoodYes/y',int2str(i),'.wav');
%         no_file_name= strcat('./ProjectSounds/GoodNo/n',int2str(i),'.wav');
        yes_file_name= strcat('./ProjectSounds_noSine/GoodYes/y',int2str(i),'.wav');
        no_file_name= strcat('./ProjectSounds_noSine/GoodNo/n',int2str(i),'.wav');
        
        check_Y(i) = check_yes_or_no(yes_file_name,T);
        check_N(i) =  check_yes_or_no(no_file_name,T);
    end
end