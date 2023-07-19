% Figure1B.m
% Hadza females

clear all
close all
clc

lx=[1
0.784
0.735
0.712
0.685
0.662
0.649
0.645
0.636
0.614
0.61
0.596
0.592
0.584
0.579
0.574
0.57
0.565
0.56
0.56
0.549
0.543
0.533
0.533
0.533
0.533
0.533
0.533
0.521
0.521
0.515
0.509
0.509
0.509
0.503
0.503
0.503
0.489
0.489
0.481
0.463
0.454
0.445
0.445
0.445
0.445
0.434
0.414
0.414
0.414
0.404
0.404
0.386
0.377
0.369
0.36
0.354
0.354
0.347
0.347
0.34
0.334
0.326
0.326
0.311
0.311
0.311
0.278
0.27
0.27
0.244
0.232
0.22
0.208
0.171
0.143
0.1
0.091
0.063
0.053
0.042
0.042
0.021
0.021
0.021
0.011
0.011];

mx=[0
0
0
0
0
0
0
0
0
0
0
0
0
0
0.005444646
0.00907441
0.047186933
0.050816697
0.058076225
0.068965517
0.059891107
0.054446461
0.056261343
0.050816697
0.063520871
0.050816697
0.047186933
0.054446461
0.032667877
0.041742287
0.045372051
0.025408348
0.025408348
0.030852995
0.025408348
0.023593466
0.012704174
0.019963702
0.00907441
0.005444646
0.007259528
0.005444646
0.005444646
0.005444646
0
0.001814882
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0];

age=(1:87)';

sgtitle('(b) Hadza females','fontsize',30,'Interpreter','latex')

subplot(1,2,1)
h1=bar(age,lx);
set(h1,'facecolor','red')
axis([0,90,0,1.1])
set(gca,'linewidth',3,'fontsize',20,'XTick',[1,15:15:90])
xlabel('age (years)','fontsize',30,'Interpreter','latex')
ylabel('survival rate, $l_x$','fontsize',30,'Interpreter','latex')

subplot(1,2,2)
h2=bar(age,mx);
set(h2,'facecolor','blue')
axis([0,90,0,0.076])
set(gca,'linewidth',3,'fontsize',20,'XTick',[1,15:15:90])
xlabel('age (years)','fontsize',30,'Interpreter','latex')
ylabel('reproduction rate, $m_x$','fontsize',30,'Interpreter','latex')

ounits=get(gcf,'Units');
set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
orient landscape

print -dpng Figure1B