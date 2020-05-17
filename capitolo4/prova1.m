a=-1;
b=1;
ntot=100;
erreq=zeros(ntot-3,1);
errch=zeros(ntot-3,1);
n=ntot;
xeq=linspace(a,b,n+1);
xch=chebyshev(a,b,n+1);
xch(1)=a;
xch(n+1)=b;
xq=linspace(a,b,100);
yeq=cos((pi*(xeq(:).^2))/2);
ych=cos((pi*(xch(:).^2))/2);
yq=cos((pi*(xq(:).^2))/2);
riseq=spline(xeq,yeq,xq);
risch=spline(xch,ych,xq);
riseqnat=splinenat(xeq,yeq,xq);
rischnat=splinenat(xch,ych,xq);
x=(1:1:n);

semilogy(x,riseq,x,risch);
%semilogy(x,riseqnat,x,rischnat);