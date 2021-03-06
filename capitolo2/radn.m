function x1=radn(x, n)
%
% x1=radn(n,x)
% funzione Matlab che implementa il metodo di newton per il calcolo della 
% radice n-esima di un numero positivo x  
%	
format long e
imax=1000;
tolx=eps;   
if x<=0
    error('valore in ingresso errato');
end
x1=x/2;
for i=1:imax
   x0=x1;
   fx=x0^n-x;
   fx1=(n)*x0^(n-1);
   x1=x0-fx/fx1;
   if abs(x1-x0)<=tolx
       break
   end
   
end
if abs(x1-x0)>tolx
    error('metodo non converge')
end
    
   
