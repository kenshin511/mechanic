function [W] = massf(V, varargin)

if (ischar(varargin{1}))
    idx_n = Mtrl_Idx(varargin{1});
    variable_name = xlsread('metal.xlsx');
    density = variable_name(idx_n);
else % �����̸�
       density = varargin{1};
end

%���� = ü�� x �е�
W= V*density;

function y = Mtrl_Idx(type)
data = [{'steel'}, {'al'}, {'pl'}, {'ru'}];

for n = 1 : length(data)
    if strcmpi(type, data(n))
        y = n;
        break;
    end
end


