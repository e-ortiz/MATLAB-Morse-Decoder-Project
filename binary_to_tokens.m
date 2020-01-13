function tokens = binary_to_tokens (signal)
% binary_to_tokens accepts a column vector of binary values, then counts
% how many 1s/0s appear in sequence.
%   input: signal(vector): vector of positive and negative values
%   output: tokens(matrix) a matrix where column 1 contains the token value and column 2 contains how many appear in sequence
  
tokens = [];
k = 0;

if(~isempty(signal))
% if input signal is not empty, set element to first signal element freq to 1
    element = signal(1);
    freq = 1;
% loops over signal from 2 to signal's end
    for i=2:length(signal)
% if the value of signal is an element then freq increments by 1
        if signal(i) == element
            freq = freq+1;
        else
% if the element of signal != element, stores the earlier sequence elem/freq in tokens in column 1 and 2 
            tokens(k+1,1) = element;
            tokens(k+1,2) = freq;
            k = k + 1; 
            element = signal(i); 
            freq = 1; 
end
end
% add the element / frequency of the last sequence of the signal to tokens(output)
    tokens(k+1,1) = element;
    tokens(k+1,2) = freq;
end
end