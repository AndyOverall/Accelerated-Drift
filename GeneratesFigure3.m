clear all
close all
clc

% Useful
Tset=0:500;
p=0.3;
logH0=log(2*p*(1-p));

% load and plot simulated data of nonaccelerated Chimps
load matlab4A.mat   
plot(Tset,log(Hpop),'k', 'linewidth',3)

hold on

% load and plot simulated data of nonaccelerated Hadza
load matlab3A.mat   
plot(Tset,log(Hpop),'r', 'linewidth',3)

% load and plot simulated data of nonaccelerated US females
load matlab2A.mat   
plot(Tset,log(Hpop),'b', 'linewidth',3)
hold on

% plot theory nonaccelerated Chimps
n=484;
G=6.2;
logH_theory=logH0-Tset/n/G^2;
plot(Tset,logH_theory,'k:', 'linewidth',3)

% plot theory nonaccelerated Hadza
n=246;
G=7.3;
logH_theory=logH0-Tset/n/G^2;
plot(Tset,logH_theory,'r:', 'linewidth',3)

% plot theory nonaccelerated US females
n=114;
G=7;
logH_theory=logH0-Tset/n/G^2;
plot(Tset,logH_theory,'b:', 'linewidth',3)

axis([0,T,-1,-0.8])
h=legend( '{  }Chimp - simulation{  }',...
          '{  }Hadza - simulation{  }',...
          '{  }US females - simulation{       }',...
          '{  }Chimp - theory{  }',...
          '{  }Hadza - theory{  }',...
          '{  }US females - theory{  }',...
          'numcolumns',2);
set(h,'linewidth',3,'fontsize',20,'location','north')
set(gca,'linewidth',3,'fontsize',20)
set(gca,'xtick',0:T/5:T)
set(gca,'ytick',[-1:0.05:-0.8])
xlabel('timesteps, \itt','fontsize',30)
ylabel('ln({\itH}({\itt}))','fontsize',30)
ounits=get(gcf,'Units');
set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
orient landscape
print -dpng Figure3
