% PlotFile4B.m
% Female Hadza

clear all
close all
clc

load matlab3B.mat

figure
plot(0:T,log(H(:,[1,3,6,9,12,17])),'linewidth',1)
hold on
plot(0:T,log(Hpop),'k', 'linewidth',2.5)

load matlab3A.mat

plot(0:T,log(Hpop),'k-.', 'linewidth',2.5)
axis([0,T,-1.15,-0.65])

h2=legend('{  }newborn      {  }',...
          '{  }age-class 3  {  }',...
          '{  }age-class 6 {  }',...
          '{  }age-class 9 {  }',...
          '{  }age-class 12 {  }',...
          '{  }age-class 17 {  }',...
          '{  }population   {  }',...
          '{  }non-accelerated population   {  }','numcolumns',2)    
set(h2,'linewidth',3,'fontsize',20,'location','north')
set(gca,'linewidth',3,'fontsize',20)
set(gca,'xtick',0:T/5:T)
set(gca,'ytick',[-1.1:0.1:-0.7])
xlabel('timesteps, \itt','fontsize',30)
ylabel('ln({\itH}({\itt}))','fontsize',30)
ounits=get(gcf,'Units');
set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
orient landscape
print -dpng Figure4B