function y = newtoncotes(f,a, b, n)
%
% y= newtoncotes(f,a,b, n)
% calcola l'approssimazione dell'integrale definito per la funzione f sull'intervallo [a, b],
% utilizzando la formula di newton cotes di grado n.
%
%	f-	funzione 
%	a,b-	intervallo dei punti
%	n-	grado della formula di newton cotes
%	y-	approssimazione integrale definito di f(x)
    
if a > b || n < 0
    error('dati inconsistenti');
end
xi = linspace(a, b, n+1);
fi = feval(f, xi);
h = (b-a) / n;
c = ncweights(n);
y = h*sum(fi.*c);
return
end
