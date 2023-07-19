% Figure2.m

clear all
close all
clc

loglxChimp=[0
-0.089909454
-0.14691047
-0.170053304
-0.193820026
-0.210419288
-0.218244625
-0.226945307
-0.252588192
-0.298432015
-0.298432015
-0.326058001
-0.343901798
-0.366531544
-0.388276692
-0.388276692
-0.402304814
-0.402304814
-0.416801226
-0.432973634
-0.448550002
-0.457174573
-0.474955193
-0.484126156
-0.484126156
-0.525783736
-0.54668166
-0.557520231
-0.603800653
-0.630784143
-0.675717545
-0.725842151
-0.782516056
-0.821023053
-0.841637508
-0.93930216
-0.93930216
-0.970616222
-1.004364805
-1.070581074
-1.193820026
-1.193820026
-1.193820026
-1.193820026
-1.193820026
-1.366531544
-1.494850022
-1.677780705
-1.677780705
-1.677780705
-1.677780705
-1.677780705
-1.677780705
-1.677780705
-1.958607315
-1.958607315];

loglxHadza=[0
-0.105683937
-0.133712661
-0.147520006
-0.164309429
-0.179142011
-0.187755303
-0.190440285
-0.196542884
-0.211831629
-0.214670165
-0.22475374
-0.227678293
-0.233587153
-0.237321436
-0.241088108
-0.244125144
-0.247951552
-0.251811973
-0.251811973
-0.260427656
-0.26520017
-0.273272791
-0.273272791
-0.273272791
-0.273272791
-0.273272791
-0.273272791
-0.283162277
-0.283162277
-0.288192771
-0.293282218
-0.293282218
-0.293282218
-0.298432015
-0.298432015
-0.298432015
-0.310691141
-0.310691141
-0.317854924
-0.334419009
-0.342944147
-0.351639989
-0.351639989
-0.351639989
-0.351639989
-0.36251027
-0.382999659
-0.382999659
-0.382999659
-0.393618635
-0.393618635
-0.413412695
-0.42365865
-0.432973634
-0.443697499
-0.450996738
-0.450996738
-0.459670525
-0.459670525
-0.468521083
-0.476253533
-0.4867824
-0.4867824
-0.507239611
-0.507239611
-0.507239611
-0.555955204
-0.568636236
-0.568636236
-0.612610174
-0.634512015
-0.657577319
-0.681936665
-0.76700389
-0.844663963
-1
-1.040958608
-1.200659451
-1.27572413
-1.37675071
-1.37675071
-1.677780705
-1.677780705
-1.677780705
-1.958607315
-1.958607315];

loglxUS=[0
-0.002814643
-0.003015764
-0.00314698
-0.00323448
-0.003317621
-0.003387646
-0.003448928
-0.003510218
-0.003567138
-0.003624066
-0.003676621
-0.003742324
-0.003803656
-0.003878142
-0.003974554
-0.004092908
-0.004250763
-0.004426225
-0.004632483
-0.004825665
-0.005023326
-0.005234264
-0.005436509
-0.005638848
-0.00583688
-0.006052617
-0.006268461
-0.006497638
-0.006735758
-0.006987248
-0.007247715
-0.00754369
-0.007861978
-0.008211478
-0.008583408
-0.008986692
-0.009425855
-0.009923222
-0.010456748
-0.011044384
-0.011677428
-0.012373949
-0.013111873
-0.013940735
-0.014807129
-0.015751805
-0.016743675
-0.017832829
-0.019015459
-0.02027867
-0.021655112
-0.023127531
-0.02477045
-0.026567323
-0.028543233
-0.030695938
-0.033107704
-0.035726224
-0.038616879
-0.041775467
-0.045198094
-0.04908046
-0.053307073
-0.057862919
-0.062903568
-0.06838451
-0.074445555
-0.080995168
-0.088150204
-0.095868955
-0.104295751
-0.113464156
-0.123701314
-0.13478939
-0.146934835
-0.16056595
-0.175295059
-0.191356974
-0.209468548
-0.229354143
-0.252696974
-0.27781047
-0.306062109
-0.337695582
-0.37315684
-0.413019083
-0.457460879
-0.507337373
-0.562566556
-0.624885315
-0.694691632
-0.77237035
-0.860309778
-0.956205608
-1.06253226
-1.178355482
-1.305394801
-1.444301105
-1.595679533
-1.760200182
-1.938170693
-2.130181792
-2.336299075
-2.557520231
-2.793174124];

logTypeII=[0
-0.026872146
-0.053744293
-0.080616439
-0.107488586
-0.134360732
-0.161232878
-0.188105025
-0.214977171
-0.241849318
-0.268721464
-0.29559361
-0.322465757
-0.349337903
-0.37621005
-0.403082196
-0.429954342
-0.456826489
-0.483698635
-0.510570782
-0.537442928
-0.564315074
-0.591187221
-0.618059367
-0.644931514
-0.67180366
-0.698675806
-0.725547953
-0.752420099
-0.779292246
-0.806164392
-0.833036538
-0.859908685
-0.886780831
-0.913652978
-0.940525124
-0.96739727
-0.994269417
-1.021141563
-1.04801371
-1.074885856
-1.101758002
-1.128630149
-1.155502295
-1.182374442
-1.209246588
-1.236118734
-1.262990881
-1.289863027
-1.316735174
-1.34360732
-1.370479466
-1.397351613
-1.424223759
-1.451095906
-1.477968052
-1.504840198
-1.531712345
-1.558584491
-1.585456638
-1.612328784
-1.63920093
-1.666073077
-1.692945223
-1.71981737
-1.746689516
-1.773561662
-1.800433809
-1.827305955
-1.854178102
-1.881050248
-1.907922394
-1.934794541
-1.961666687
-1.988538834
-2.01541098
-2.042283126
-2.069155273
-2.096027419
-2.122899566
-2.149771712
-2.176643858
-2.203516005
-2.230388151
-2.257260298
-2.284132444
-2.31100459
-2.337876737
-2.364748883
-2.39162103
-2.418493176
-2.445365322
-2.472237469
-2.499109615
-2.525981762
-2.552853908
-2.579726054
-2.606598201
-2.633470347
-2.660342494
-2.68721464
-2.714086786
-2.740958933
-2.767831079
-2.794703226
-2.821575372];

logTypeIII=[0
-0.268358481
-0.511179276
-0.730892618
-0.92969747
-1.10958354
-1.272351186
-1.419629443
-1.552892321
-1.67347356
-1.782579976
-1.881303544
-1.970632322
-2.051460344
-2.124596562
-2.190772948
-2.250651819
-2.304832462
-2.353857135
-2.398216494
-2.438354501
-2.474672872
-2.507535093
-2.537270061
-2.564175372
-2.588520304
-2.610548509
-2.630480454
-2.648515623
-2.664834519
-2.679600467
-2.692961249
-2.705050585
-2.715989468
-2.725887379
-2.734843379
-2.742947103
-2.750279655
-2.756914423
-2.76291781
-2.768349898
-2.773265055
-2.777712473
-2.781736664
-2.785377901
-2.78867263
-2.791653823
-2.794351319
-2.796792113
-2.799000636
-2.800998989
-2.802807175
-2.804443288
-2.805923705
-2.807263242
-2.808475305
-2.809572024
-2.810564377
-2.811462296
-2.812274766
-2.813009919
-2.813675113
-2.814277006
-2.814821621
-2.815314408
-2.815760301
-2.816163762
-2.816528828
-2.816859154
-2.817158045
-2.817428493
-2.817673204
-2.817894628
-2.818094981
-2.818276267
-2.818440302
-2.818588727
-2.818723027
-2.818844547
-2.818954503
-2.819053995
-2.81914402
-2.819225477
-2.819299183
-2.819365874
-2.819426219
-2.819480822
-2.819530228
-2.819574933
-2.819615383
-2.819651984
-2.819685102
-2.819715069
-2.819742184
-2.819766718
-2.819788918
-2.819809005
-2.819827181
-2.819843626
-2.819858507
-2.819871972
-2.819884156
-2.81989518
-2.819905155
-2.81991418
-2.819922347];

ageChimp=(1:length(loglxChimp))';
ageHadza=(1:length(loglxHadza))';
ageUS=(1:length(loglxUS))';
ageTypeII=(1:length(logTypeII))';
ageTypeIII=(1:length(logTypeIII))';


plot(ageUS,loglxUS,'b', ageHadza,loglxHadza,'r',ageChimp,loglxChimp,'g',...
     ageTypeII,logTypeII,'k:',ageTypeIII,logTypeIII,'k','linewidth',3) 
axis([0,135,-3,0.3])
set(gca,'linewidth',3,'fontsize',20,'XTick',[1,20:20:120])
xlabel('age (years)','fontsize',30,'Interpreter','latex')
ylabel('$\log_{10}(l_x)$','fontsize',30,'Interpreter','latex')

legend('{  }US females','{  }Hadza females','{  }Chimpanzee (wild)', '{  }Type II', '{  }Type III')

ounits=get(gcf,'Units');
set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
orient landscape

print -dpng Figure2