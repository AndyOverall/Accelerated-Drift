% SimulationNoAccelerationHadza.m
%
% Simulates genetic composition of a population for a given equilbrated age structure.
% Stationary numbers in each age category are contained in Nx=[n1,n2,...]'.
%
% A given age class, with nx individuals, is represented as a column vector of length nx;
% elements are 1's (A allele) and 0's (B allele)

% X(t+1,r,k) is frequency of A at time t=0,1,2,...,T in age class k

% Further Information
% Promotion of age class x to age class x+1 involves deterministic frequency transfer (no acceleration)
% To populate the newborn class, offspring are produced from other classes.
% For age class x:
% (i)   compute bx=round(mx*nx) = No. of offspring produced
% (ii)  compute the frequency of A alleles, say px
% (iii) compute the binomial number of A alleles produced: Bin(bx,x), with No. B alleles = nx - No A alleles.
%
% % % Need to ensure that sum(bx) equals stationary number in age class 1, namely n1, otherwise may be bias.
% % % We have shifted the largest values of bx to ensure n_1 = sum_x(bx).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PROGRAM ASSUMES ALL nx > 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CORRECTING ROUNDING ERRORS !!!!!!!!!!!!!!!!!!!!!!!
% Must have sum(Bx) = Nx(1), otherwise the two alleles are not equivalent
% This condition is equivalent to No. A's produced is A=binornd(bx,x), and
% No. B's produced is bx-A.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Frequency = frequency of A allele

clear all
close all
clc

% Parameters
T=500;                  % No, time steps
Reps=500;               % No. replicate trajectories
p=0.3;                  % In each age-class, the frequency is p at time 0

% Population 
% CHANGED Nx(1) to 114 so it equals sum(Bx)
%       Age     lx              mx              nx
Type = [1	1	0	246
2	0.712	0	175
3	0.645	0	159
4	0.592	0	149
5	0.565	0.229604627	139
6	0.533	0.399855677	131
7	0.533	0.442027956	131
8	0.509	0.392045996	125
9	0.489	0.284272395	120
10	0.445	0.153069751	109
11	0.414	0.035924533	103
12	0.386	0	96
13	0.354	0	88
14	0.326	0	81
15	0.278	0	69
16	0.22	0	54
17	0.091	0	23
18	0.021	0	5];

% Population parameters
K=length(Type);                         % Number of different age classes
Lx=Type(:,2);                           % Viabilities of different age classes
Mx=Type(:,3);                           % Fertilities of different age classes
Nx=Type(:,4);                           % Numbers in different age classes
Bx=round(Mx.*Nx);                       % Numbers of offspring produced by each age class
N=sum(Nx);                              % Population size

if sum(Bx)~=Nx(1)                       % These need to be equal or there is bias
    disp('bias problem')
    pause
end

% Initialisation
X=zeros(T+1,Reps,K);        % X(t+1,r,k) is frequency at time t, in rep r, in age-class k
X(1,:,:)=p;                 % Frequency is p in all age-classes at time 0

for r=1:Reps
    r

    % Reproduction (populating age-class 1)
    for t=1:T
        x=squeeze(X(t,r,:));                                % Frequencies in all age-classes
        X(t+1,r,1)=sum(binornd(Bx,x))/Nx(1);                % Populate age-class 1 with binomial contributions
        for k=1:(K-1)
            X(t+1,r,k+1)=X(t,r,k);                          % Deterministically transfer freqs of age-classes
        end
    end
end

A=zeros(T+1,Reps);                                  % A(t+1,r) = No. of A's in pop at time t(=0,1,..) in rep r
for k=1:K
    A=A+X(:,:,k)*Nx(k);
end
Xpop=A/sum(Nx);                                     % Frequency of A in population

EXpop=mean(Xpop,2);                                 % Mean frequency of A in population                                 
Hpop=2*mean(Xpop.*(1-Xpop),2);                      % Mean population heterozygosity    

%X=X(:,:,[1,3,6,9,12]);
EX=squeeze(mean(X,2));
H=squeeze(2*mean(X.*(1-X),2));                      % Mean heterozygosity of some age classes

save matlab3A.mat

% figure(1)
% plot(0:T,EX(:,[1,3,6,9,12,17]),'linewidth',1)
% hold on
% plot(0:T,EXpop,'k', 'linewidth',3)
% axis([0,T,0,1])
% xlabel('timesteps, \itt','fontsize',30)
% ylabel('{\itE} [{\itX}({\itt})]','fontsize',30)
% h1=legend('{  }newborn      {  }',...
%           '{  }age-class 3  {  }',...
%           '{  }age-class 6 {  }',...
%           '{  }age-class 9 {  }',...
%           '{  }age-class 12 {  }',...
%           '{  }age-class 17 {  }',...
%           '{  }population   {  }');
% set(h1,'linewidth',3,'fontsize',20,'location','northwest')
% set(gca,'linewidth',3,'fontsize',20)
% set(gca,'xtick',0:T/5:T)
% set(gca,'ytick',0:0.2:1)
% xlabel('timesteps, \itt','fontsize',30)
% ylabel('{\itE} [{\itX}({\itt})]','fontsize',30)
% ounits=get(gcf,'Units');
% set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
% orient landscape
% print -dpng Figure3AEX
% savefig('Figure3AEX.fig')
% 
% figure(2)
% plot(0:T,log(H(:,[1,3,6,9,12,17])),'linewidth',1)
% hold on
% plot(0:T,log(Hpop),'k', 'linewidth',3)
% axis([0,T,-1,-0.7])
% h2=legend('{  }newborn      {  }',...
%           '{  }age-class 3  {  }',...
%           '{  }age-class 6 {  }',...
%           '{  }age-class 9 {  }',...
%           '{  }age-class 12 {  }',...
%           '{  }age-class 17 {  }',...
%           '{  }population   {  }');
% set(h2,'linewidth',3,'fontsize',20,'location','northeast')
% set(gca,'linewidth',3,'fontsize',20)
% set(gca,'xtick',0:T/5:T)
% set(gca,'ytick',[-1:0.1:-0.7])
% xlabel('timesteps, \itt','fontsize',30)
% ylabel('ln({\itH}({\itt}))','fontsize',30)
% ounits=get(gcf,'Units');
% set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
% orient landscape
% print -dpng Figure3A_lnH
% savefig('Figure3A_lnH.fig')
% 
% figure(3)
% TT=0:100;
% a=log(H(TT+1,[1,9,17]))./log(Hpop(TT+1,:));
% plot(TT,a,'linewidth',2)
% h2=legend('{  }newborn      {  }',...
%           '{  }age-class 9 {  }',...
%           '{  }age-class 17 {  }');
% set(h2,'linewidth',3,'fontsize',20,'location','northeast')
% set(gca,'linewidth',3,'fontsize',20)
% set(gca,'xtick',0:20:100)
% set(gca,'ytick',[0.99:0.01:1.03])
% axis([0,100,0.99,1.03])
% xlabel('timesteps, \itt','fontsize',30)
% ylabel('ln({\itH}({\itt}))/ln({\itH_{pop}}({\itt}))','fontsize',30)
% ounits=get(gcf,'Units');
% set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
% orient landscape
% print -dpng Figure3A_rel_to_pop
% savefig('Figure3A_rel_to_pop.fig')