%t=90;
% Young's Mod
E=1;
% Inital Volume
v=1;
% Since truss is vertical, D is not needed
LL=sqrt(2);
%D 

% Little l is deformation applied, consider tension here so must be greater
% then LL 
l=linspace(0,10,100);

green=(E*v./l).*((l.^2-LL^2)./(2*LL^2))
fEA=green./(E*(v/LL));
plot(l/LL,fEA,'b--o')
hold on

logstrain=(E*v./l).*log(l/LL)
fEAlog=logstrain./(E*(v/LL));

plot(l/LL,fEAlog,'r')
 xlim([1 4])
  ylim([0 0.5])
 xlabel('x/L')
 ylabel('F/EA')
 legend('Green','Logrithmic')
 set(gca,'fontsize',24)
 set(gca,'XTick',[1 1.5 2 2.5 3 3.5 4])
 set(gca,'YTick',[0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 .5])
 set(gcf,'color','w');
 grid on