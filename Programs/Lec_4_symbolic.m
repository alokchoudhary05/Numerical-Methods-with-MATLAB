% Symbolic Compution in matlab
syms x z
f=sin(x);
y=x^2;
solve(x^2-4*x+4==0);

solve(z^2-4==0);
% solve it x^3-3x^2+5x+6=0
solve(x^3-3*x^2+5*x+6==0);
solve(x^2+1==0);
solve(x^2+2*x+2==0);

g=(x+z)*(x-z);
expand(g);

w=(x-1)*(x^2-2*x+1);
expand(w);


simplify((x^3-z^3)/(x-z));

% simplify x^5-x^5/x-z 
simplify((x^5-x^5)/(x-z))

simplify(((sin(x))^2-(cos(x))^2)/(sin(x)-cos(x)))


% Ploting

%ezplot('sin(x)',[-2*pi 2*pi]);
%ezplot('cos(x)',[-2*pi 2*pi]);
%hold on
%ezplot('tan(x)',[-2*pi 2*pi]);


ezplot('sin(2*x)', [-pi pi])
hold on
ezplot('sin(x)', [-pi pi])








