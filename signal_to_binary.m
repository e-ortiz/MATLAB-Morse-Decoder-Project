function binary = signal_to_binary(signal,threshold)
% signal_to_binary grabs a column vector of +/- floats abd a scalarvalues
% representing threshold, then returns the binary signal column vector
% msg from code_to_char
%   input: signal(vector): columns vector of positive and negative floats
%          threshold(int): scalar valye representing thresh value
%   output: binary(vector): binary signal column vecotr
    absSig=abs(signal);
    sigAvg=filter((1/20)*ones(1,20),1,absSig);
    binary=zeros(size(signal));
    binary(sigAvg>threshold)=1;
end
