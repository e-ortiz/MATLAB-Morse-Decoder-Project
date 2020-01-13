function result = tokens_to_str_code(token_mat, time_unit)
%tokens_to_str_code grabs the given token matrix and converts it to code
%msg from code_to_char
%   input: token_mat(matrix): ,time_unit(int): scalar value representing a time unit 
%   output: result(string) returns a string of dots and dashes

result = ''; % variable to store the string

% loops through rows of token_mat
for i =1:size(token_mat,1)
% if first column of ith row has 1 then:
    if(token_mat(i,1) == 1)
% if second column of ith row has a value > 4*time_unit then :
% adds a dash to the result
    if(token_mat(i,2) > 4*time_unit)
        result = [result,"-"];
% if second column of i row has a value between time_unit to 4 times the
% time_unit, adds a . to result
    elseif((token_mat(i,2) > time_unit) && (token_mat(i,2) < 4*time_unit))
    result = [result,"."];
end
% if first column of ith row has 0, then
    elseif(token_mat(i,1) == 0)
% if second column of ith row has a value > eight times the time_unit then adds a / to result
    if(token_mat(i,2) > 8*time_unit)
        result = [result,"/"];

% if second column of ith row has a value between 4 and 8 times the time unit adds a space to result
    elseif((token_mat(i,2) > 4*time_unit) && (token_mat(i,2) < 8*time_unit))
        result = [result," "];
end
end
end
end