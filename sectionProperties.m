function [A I] = sectionProperties(type, varargin)
% ������ �������� ������ ����

% ��ҹ��� ��ȯ
type = lower(type);

switch type
    case 'cir'
        D = varargin{1}; t = varargin{2};
        d = insize(D, t);
                
        A = pi*(D^2-d^2)/4;
        I = pi*(D^4 - d^4) / 64;
        
    case 'rec'
        B= varargin{1}; H= varargin{2}; t = varargin{3};
        b = insize(B, t); h = insize(H, t);
        
        A=B*H-b*h;
        I=(B*H^3-b*h^3)/12;
end
    
% �β� t�� ����� ���� ���ϱ�
    function d = insize(D, t)
        if (t == 0)
            d = 0;
        else
            d = D - 2*t;
        end
    end

end
