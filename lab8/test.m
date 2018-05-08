d=[exp(0), exp(3)]; % derivata e^x
t=linspace(0,3,200)';
x=0:3; y=exp(x);

% complete
[a1,b1,c1,d1]=cubic_spline(x,y,d,0);
s1=eval_spline(x,[a1,b1,c1,d1],t);

% derivate secunde
[a2,b2,c2,d2]=cubic_spline(x,y,d,1);
s2=eval_spline(x,[a2,b2,c2,d2],t);

% naturale
[a3,b3,c3,d3]=cubic_spline(x,y,[0, 0],2);
s3=eval_spline(x,[a3,b3,c3,d3],t);

% de Boor
[a4,b4,c4,d4]=cubic_spline(x,y,[0, 0], 3);
s4=eval_spline(x,[a4,b4,c4,d4],t);

yg=exp(t);
plot(x,y,'o',t,[yg,s1,s2,s3,s4])
legend('noduri','f','complete', 'deriv secunde', 'natural', 'deBoor',-1)