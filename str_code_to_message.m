function charString = str_code_to_message(codeStr)
%str_code_to_message grabs a string of dots and dashes and returns the translated
%msg from code_to_char
%   input: codeString(string) a string with dots and dashes
%   output: charString(char) a char with the msg translated

charString='';
k=1;
l = length(codeStr);
for i = 1:l
    if codeStr(i)==' '
        charString=[charString,code_to_char(codeStr(k:i-1))];
        k=i+1;
    elseif codeStr(i)=='/'
        charString=[charString,code_to_char(codeStr(k:i-1))];
        charString=[charString,' '];
        k=i+1;
end
end
charString=[charString,code_to_char(codeStr(k:i))];
end
