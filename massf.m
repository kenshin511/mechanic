function [W] = massf(V, varargin)

if (ischar(varargin{1}))
    idx_n = Mtrl_Idx(varargin{1});
    variable_name = xlsread('metal.xlsx');
    density = variable_name(idx_n);
else % 숫자이면
       density = varargin{1};
end

%무게 = 체적 x 밀도
W= V*density;

function y = Mtrl_Idx(type)
data = [{'steel'}, {'al'}, {'pl'}, {'ru'}];

for n = 1 : length(data)
    if strcmpi(type, data(n))
        y = n;
        break;
    end
end


