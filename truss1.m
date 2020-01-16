%vvt=45; % inital angle in undeformed config. 45-45-90 triangle with side edges 1, 1 & sqrt(2)
E=1;
v=1;
LL=sqrt(2);
D=1;
x=linspace(-20,20,500);
l=sqrt(D^2+x.^2);
green=(E*v.*x./l.^2).*((l.^2-LL^2)./(2*LL^2));
fEA=green./(E*(v/LL));
plot(x/LL,fEA,'b--o', 'LineWidth',2)
%xlabel('x')
%ylabel('F')

hold on

logstrain=(E*v.*x./l.^2).*log(l/LL);
fEAlog=logstrain./(E*(v/LL));

 plot(x/LL,fEAlog,'r','LineWidth',2)
 xlim([-4 4])
 ylim([-.4 0.4])
 xlabel('x/L','FontWeight','bold');
 ylabel('F/EA','FontWeight','bold');
 legend('Green','Logrithmic')
 set(gca,'fontsize',24)
 set(gca,'XTick',[-4 -3 -2 -1 0 1 2 3 4])
 set(gca,'YTick',[-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4])
 set(gcf,'color','w');
 grid on