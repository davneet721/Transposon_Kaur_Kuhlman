%% Thesis plots

%%
hold off
errorbar(0,FITmaxVenus(1,1),errorVenus(1,12),errorVenus(1,12),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
% ,errorCherry(1),errorCherry(1)
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
    hold on
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),FITmaxVenus(1,i+1),errorVenus(i+1,12),errorVenus(i+1,12),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
%set(gca,'xscale','log')
end
%errorbar(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),FITmaxVenus(1,9),errorVenus(9,12),errorVenus(9,12),errorMptCt1pZSCherry(12),errorMptCt1pZSCherry(12),plotmarkmat(2),'Linewidth',2,'Color',colorsch(2,:),'MarkerSize',12)
%errorbar(uMttIPTGCherryFITal(round(4*[0.25])),FITmaxVenus(1,10),errorVenus(10,12),errorVenus(10,12),errorCherry(10),errorCherry(10),'o','Linewidth',3,'Color',colorsch(5,:))
%errorbar(uMttIPTGCherryFITal(round(4*[2000])),FITmaxVenus(1,11),errorVenus(11,12),errorVenus(11,12),errorCherry(11),errorCherry(11),'o','Linewidth',3,'Color',colorsch(9,:))

%legend('Trans No IPTG','Trans 10uM IPTG','Trans 20uM IPTG','Trans 50uM IPTG','Trans 100uM IPTG','Trans 200uM IPTG','Trans 2000uM IPTG','Cis No IPTG')
legend('Tn4rev Only','Trans No IPTG','Trans 10uM IPTG','Trans 20uM IPTG','Trans 50uM IPTG','Trans 100uM IPTG','Trans 200uM IPTG','Trans 2000uM IPTG','Cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (arbitrary units)')
ylabel('Peak Venus Fluorescence per cell, ATc=200ng/mL')
title(['Increased Transposon count with TnpB'])
%% Peak Cerulean vs Cherry
hold off
errorbar(0,FITmaxCer(1,1),errorCer(1,12),errorCer(1,12),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
%errorCherry(1),errorCherry(1),
%uMptpZSCherry-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT)
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
    hold on
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),FITmaxCer(1,i+1),errorCer(i+1,12),errorCer(i+1,12),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
%set(gca,'xscale','log')
end
%errorbar(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),FITmaxCer(1,9),errorCer(9,12),errorCer(9,12),errorMptCt1pZSCherry(12),errorMptCt1pZSCherry(12),plotmarkmat(2),'Linewidth',2,'Color',colorsch(2,:),'MarkerSize',12)
legend('Tn4rev Only','in trans No IPTG','in trans 10然 IPTG','in trans 20然 IPTG','in trans 50然 IPTG','in trans 100然 IPTG','in trans 200然 IPTG','in trans 2000然 IPTG')
%legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG','Cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (AU)')
ylabel('Peak Cerulean Fluorescence per cell, aTc=200ng/mL')
title(['Increased Plasmid Excision Rate with TnpB'])
%% Peak Cerulean Integral vs Cherry
hold off
errorbar(0,FITmaxCerInt(1,1),errorCerInt(1,12),errorCerInt(1,12),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
% ,errorCherry(1),errorCherry(1)
%uMptpZSCherry-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT)
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
    hold on
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),FITmaxCerInt(1,i+1),errorCerInt(i+1,12),errorCerInt(i+1,12),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
%set(gca,'xscale','log')
end
%errorbar(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),FITmaxCerInt(1,9),errorCerInt(9,12),errorCerInt(9,12),errorMptCt1pZSCherry(12),errorMptCt1pZSCherry(12),plotmarkmat(2),'Linewidth',2,'Color',colorsch(2,:),'MarkerSize',12)

legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG','in cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
%'Tn4rev Only',
xlabel('Cherry::TnpB fluorescence (arbitrary units)')
ylabel('Peak Cerulean Fluorescence Integral per cell, ATc=200ng/mL')
title(['Increased Plasmid Excision with TnpB'])
%%
hold off
errorbar(FITmaxVenus(1,2:8),FITmaxCerInt(1,2:8),errorCerInt(2:8,12),'o','Linewidth',3)
%set(gca,'xscale','log')
xlabel('Peak Venus Fluorescence per cell, ATc=200ng/mL')
ylabel('Peak Cerulean Fluorescence per cell, ATc=200ng/mL')
title(['Increased Plasmid Excision with Increased TnpA'])

%% Cerulean Inflection Point
InflecPtCer=Bs(2,:).*((Bs(3,:)-1)./(Bs(3,:)+1)).^(1./Bs(3,:));
InflecPtCerdub=[InflecPtCer(1),InflecPtCer(1),InflecPtCer(2),InflecPtCer(2),InflecPtCer(3),InflecPtCer(3),InflecPtCer(4),InflecPtCer(4),InflecPtCer(5),InflecPtCer(5),InflecPtCer(6),InflecPtCer(6),InflecPtCer(7),InflecPtCer(7),InflecPtCer(8),InflecPtCer(8),InflecPtCer(9),InflecPtCer(9)];
BsCerdub=[Bs(:,1),Bs(:,1),Bs(:,2),Bs(:,2),Bs(:,3),Bs(:,3),Bs(:,4),Bs(:,4),Bs(:,5),Bs(:,5),Bs(:,6),Bs(:,6),Bs(:,7),Bs(:,7),Bs(:,8),Bs(:,8),Bs(:,9),Bs(:,9)];
%InflecPtVenus95perinter=real(confBsVenus(2,:).*((confBsVenus(3,:)-1)./(confBsVenus(3,:)+1)).^(1./confBsVenus(3,:)));
BsCerdiff=(abs(confBsCer-BsCerdub))./1.96; %Standard Error of the Mean
delCerndel=((2./(BsCerdub(3,:).*(((BsCerdub(3,:)).^2)-1))) -(log((BsCerdub(3,:)-1)./(BsCerdub(3,:)+1))./((BsCerdub(3,:)).^2))).*BsCerdiff(3,:);
InflecPtCerIntSEM = InflecPtCerdub.*((delCerndel.^2 + (BsCerdiff(2,:)./BsCerdub(2,:)).^2).^(1/2));

hold off
errorbar(0,Bs(2,1).*((Bs(3,1)-1)./(Bs(3,1)+1)).^(1./Bs(3,1)),InflecPtCerSEM(1),InflecPtCerSEM(2),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
hold on
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),InflecPtCer(i+1),InflecPtCerSEM(2*(i)+1),InflecPtCerSEM(2*(i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
end
%errorbar(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),Bs(2,9).*((Bs(3,9)-1)./(Bs(3,9)+1)).^(1./Bs(3,9)),errorCherry(9),errorCherry(9),plotmarkmat(9),'horizontal','Linewidth',3,'Color',colorsch(2,:))
% There's no single 'Cherry-TnpB value' for Cis combo
%legend('Tn4rev Only','Trans No IPTG','Trans 10uM IPTG','Trans 20uM IPTG','Trans 50uM IPTG','Trans 100uM IPTG','Trans 200uM IPTG','Trans 2000uM IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG') %'Cis No IPTG',
legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG')%'Cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (arbitrary units)')
ylabel('Inflection Point for Cerulean vs ATc')
title(['Earlier Plasmid Excision of Transposon with TnpB'])
%% Cerulean Integral Inflection Point
InflecPtCerInt=BsCerInt(2,:).*((BsCerInt(3,:)-1)./(BsCerInt(3,:)+1)).^(1./BsCerInt(3,:));
InflecPtCerIntdub=[InflecPtCerInt(1),InflecPtCerInt(1),InflecPtCerInt(2),InflecPtCerInt(2),InflecPtCerInt(3),InflecPtCerInt(3),InflecPtCerInt(4),InflecPtCerInt(4),InflecPtCerInt(5),InflecPtCerInt(5),InflecPtCerInt(6),InflecPtCerInt(6),InflecPtCerInt(7),InflecPtCerInt(7),InflecPtCerInt(8),InflecPtCerInt(8),InflecPtCerInt(9),InflecPtCerInt(9)];
BsCerIntdub=[BsCerInt(:,1),BsCerInt(:,1),BsCerInt(:,2),BsCerInt(:,2),BsCerInt(:,3),BsCerInt(:,3),BsCerInt(:,4),BsCerInt(:,4),BsCerInt(:,5),BsCerInt(:,5),BsCerInt(:,6),BsCerInt(:,6),BsCerInt(:,7),BsCerInt(:,7),BsCerInt(:,8),BsCerInt(:,8),BsCerInt(:,9),BsCerInt(:,9)];
%InflecPtVenus95perinter=real(confBsVenus(2,:).*((confBsVenus(3,:)-1)./(confBsVenus(3,:)+1)).^(1./confBsVenus(3,:)));
BsCerIntdiff=(abs(confBsCerInt-BsCerIntdub))./1.96; %Standard Error of the Mean
delCerIntndel=((2./(BsCerIntdub(3,:).*(((BsCerIntdub(3,:)).^2)-1))) -(log((BsCerIntdub(3,:)-1)./(BsCerIntdub(3,:)+1))./((BsCerIntdub(3,:)).^2))).*BsCerIntdiff(3,:);
InflecPtCerIntSEM = InflecPtCerIntdub.*((delCerIntndel.^2 + (BsCerIntdiff(2,:)./BsCerIntdub(2,:)).^2).^(1/2));

hold off
errorbar(0,BsCerInt(2,1).*((BsCerInt(3,1)-1)./(BsCerInt(3,1)+1)).^(1./BsCerInt(3,1)),InflecPtCerIntSEM(1),InflecPtCerIntSEM(2),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
%uMttIPTGCherryFITal(round(4*[0.25]))
hold on
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),InflecPtCerInt(i+1),InflecPtCerIntSEM(2*(i)+1),InflecPtCerIntSEM(2*(i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
end
%errorbar(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),BsCerInt(2,9).*((BsCerInt(3,9)-1)./(BsCerInt(3,9)+1)).^(1./BsCerInt(3,9)),'o','Linewidth',2,'Color',colorsch(2,:))
legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG')%'Cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (arbitrary units)')
ylabel('Inflection Point for Cerulean Integral vs ATc')
title(['Earlier Plasmid Excision of Transposon with TnpB'])
%% Venus Inflection Point
InflecPtVenus=BsVenus(2,:).*((BsVenus(3,:)-1)./(BsVenus(3,:)+1)).^(1./BsVenus(3,:));
InflecPtVenusdub=[InflecPtVenus(1),InflecPtVenus(1),InflecPtVenus(2),InflecPtVenus(2),InflecPtVenus(3),InflecPtVenus(3),InflecPtVenus(4),InflecPtVenus(4),InflecPtVenus(5),InflecPtVenus(5),InflecPtVenus(6),InflecPtVenus(6),InflecPtVenus(7),InflecPtVenus(7),InflecPtVenus(8),InflecPtVenus(8),InflecPtVenus(9),InflecPtVenus(9),InflecPtVenus(10),InflecPtVenus(10),InflecPtVenus(11),InflecPtVenus(11),InflecPtVenus(12),InflecPtVenus(12),InflecPtVenus(13),InflecPtVenus(13)];
BsVenusdub=[BsVenus(:,1),BsVenus(:,1),BsVenus(:,2),BsVenus(:,2),BsVenus(:,3),BsVenus(:,3),BsVenus(:,4),BsVenus(:,4),BsVenus(:,5),BsVenus(:,5),BsVenus(:,6),BsVenus(:,6),BsVenus(:,7),BsVenus(:,7),BsVenus(:,8),BsVenus(:,8),BsVenus(:,9),BsVenus(:,9),BsVenus(:,10),BsVenus(:,10),BsVenus(:,11),BsVenus(:,11),BsVenus(:,12),BsVenus(:,12),BsVenus(:,13),BsVenus(:,13)];
%InflecPtVenus95perinter=real(confBsVenus(2,:).*((confBsVenus(3,:)-1)./(confBsVenus(3,:)+1)).^(1./confBsVenus(3,:)));
BsVenusdiff=(abs(confBsVenus-BsVenusdub))./1.96; %Standard Error of the Mean
%delVenusndel=((2./(BsVenusdub(3,:).*(((BsVenusdub(3,:)).^2)-1))) -log((BsVenusdub(3,:)-1)./(BsVenusdub(3,:)+1))./(BsVenusdub(3,:)).^2).*BsVenusdiff(3,:);
delVenusndel=((2./(BsVenusdub(3,:).*(((BsVenusdub(3,:)).^2)-1))) -((log((BsVenusdub(3,:)-1)./(BsVenusdub(3,:)+1)))./((BsVenusdub(3,:)).^2))).*BsVenusdiff(3,:);
InflecPtVenusSEM = InflecPtVenusdub.*((delVenusndel.^2 + (BsVenusdiff(2,:)./BsVenusdub(2,:)).^2).^(1/2));
hold off
errorbar(0,BsVenus(2,1).*((BsVenus(3,1)-1)./(BsVenus(3,1)+1)).^(1./BsVenus(3,1)),InflecPtVenusSEM(1),InflecPtVenusSEM(2),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
hold on
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),InflecPtVenus(i+1),InflecPtVenusSEM((2*i)+1),InflecPtVenusSEM(2*(i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
end
%plot(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),BsVenus(2,9).*((BsVenus(3,9)-1)./(BsVenus(3,9)+1)).^(1./BsVenus(3,9)),'o','Linewidth',2,'Color',colorsch(2,:))
errorbar(0,BsVenus(2,10).*((BsVenus(3,10)-1)./(BsVenus(3,10)+1)).^(1./BsVenus(3,10)),InflecPtVenusSEM(19),InflecPtVenusSEM(20),'o','Linewidth',3,'Color',colorsch(10,:))
% errorbar(0,BsVenus(2,13).*((BsVenus(3,13)-1)./(BsVenus(3,13)+1)).^(1./BsVenus(3,13)),InflecPtVenusSEM(25),InflecPtVenusSEM(26),'o','Linewidth',3,'Color',colorsch(13,:))
legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG') %'Cis No IPTG',
xlabel('Cherry::TnpB fluorescence (AU)')
ylabel('Inflection Point for Venus vs aTc')
title(['Higher Transposon Retension with TnpB'])
%% Slopes Cerulean
for j=1:9
SlopePtCer(j)=(((Bs(3,j).^2)-1)./(2*Bs(3,j)))*FITmaxCer(j).*((Bs(3,j)-1)./(Bs(3,j)+1)).^(-1./Bs(3,j));
end         
SlopePtCerdub=[SlopePtCer(1),SlopePtCer(1),SlopePtCer(2),SlopePtCer(2),SlopePtCer(3),SlopePtCer(3),SlopePtCer(4),SlopePtCer(4),SlopePtCer(5),SlopePtCer(5),SlopePtCer(6),SlopePtCer(6),SlopePtCer(7),SlopePtCer(7),SlopePtCer(8),SlopePtCer(8),SlopePtCer(9),SlopePtCer(9)]; %SlopePtCer(10),SlopePtCer(10),SlopePtCer(11),SlopePtCer(11)];
BsCerdub=[Bs(:,1),Bs(:,1),Bs(:,2),Bs(:,2),Bs(:,3),Bs(:,3),Bs(:,4),Bs(:,4),Bs(:,5),Bs(:,5),Bs(:,6),Bs(:,6),Bs(:,7),Bs(:,7),Bs(:,8),Bs(:,8),Bs(:,9),Bs(:,9)];
%InflecPtVenus95perinter=real(confBsVenus(2,:).*((confBsVenus(3,:)-1)./(confBsVenus(3,:)+1)).^(1./confBsVenus(3,:)));
BsCerdiff=(abs(confBsCer-BsCerdub))./1.96; %Standard Error of the Mean
SlopeCerndel=(((1./(BsCerdub(3,:))) + (log((BsCerdub(3,:)-1)./(BsCerdub(3,:)+1)))./((BsCerdub(3,:)).^2)).*BsCerdiff(3,:));
SlopePtCerSEM = SlopePtCerdub.*((SlopeCerndel.^2 + (BsCerdiff(1,:)./BsCerdub(1,:)).^2).^(1/2));

hold off
errorbar(0,(((Bs(3,1).^2)-1)./(2*Bs(3,1)))*FITmaxCer(1).*((Bs(3,1)-1)./(Bs(3,1)+1)).^(-1./Bs(3,1)),SlopePtCerSEM(1),SlopePtCerSEM(2),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
hold on
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
%errorbar(uMttIPTGCherryFITal(round(4*IP(i))),(((Bs(3,i+1).^2)-1)./(2*Bs(3,i+1)))*FITmaxCer(i+1).*((Bs(3,i+1)-1)./(Bs(3,i+1)+1)).^(-1./Bs(3,i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'horizontal','Linewidth',2,'Color',colorsch(i+2,:),'MarkerSize',12)
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),SlopePtCer(i+1),SlopePtCerSEM(2*(i)+1),SlopePtCerSEM(2*(i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
end
%plot(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),(((Bs(3,9).^2)-1)./(2*Bs(3,9)))*FITmaxCer(9).*((Bs(3,9)-1)./(Bs(3,9)+1)).^(-1./Bs(3,9)),'o','Linewidth',3,'Color',colorsch(2,:))
legend('Tn4rev Only','in trans No IPTG','in trans 10然 IPTG','in trans 20然 IPTG','in trans 50然 IPTG','in trans 100然 IPTG','in trans 200然 IPTG','in trans 2000然 IPTG')
%legend('Tn4rev Only','Trans No IPTG','Trans 10uM IPTG','Trans 20uM IPTG','Trans 50uM IPTG','Trans 100uM IPTG','Trans 200uM IPTG','Trans 2000uM IPTG','Cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (AU)')
ylabel('Slope at Inflection Point for Cerulean vs aTc')
title(['Cerulean slope with TnpB'])
%% Slopes Cerulean Integral
for j=1:9
SlopePtCerInt(j)=(((BsCerInt(3,j).^2)-1)./(2*BsCerInt(3,j)))*FITmaxCerInt(j).*((BsCerInt(3,j)-1)./(BsCerInt(3,j)+1)).^(-1./BsCerInt(3,j));
end         
SlopePtCerIntdub=[SlopePtCerInt(1),SlopePtCerInt(1),SlopePtCerInt(2),SlopePtCerInt(2),SlopePtCerInt(3),SlopePtCerInt(3),SlopePtCerInt(4),SlopePtCerInt(4),SlopePtCerInt(5),SlopePtCerInt(5),SlopePtCerInt(6),SlopePtCerInt(6),SlopePtCerInt(7),SlopePtCerInt(7),SlopePtCerInt(8),SlopePtCerInt(8),SlopePtCerInt(9),SlopePtCerInt(9)]; %SlopePtCer(10),SlopePtCer(10),SlopePtCer(11),SlopePtCer(11)];
BsCerIntdub=[BsCerInt(:,1),BsCerInt(:,1),BsCerInt(:,2),BsCerInt(:,2),BsCerInt(:,3),BsCerInt(:,3),BsCerInt(:,4),BsCerInt(:,4),BsCerInt(:,5),BsCerInt(:,5),BsCerInt(:,6),BsCerInt(:,6),BsCerInt(:,7),BsCerInt(:,7),BsCerInt(:,8),BsCerInt(:,8),BsCerInt(:,9),BsCerInt(:,9)];
%InflecPtVenus95perinter=real(confBsVenus(2,:).*((confBsVenus(3,:)-1)./(confBsVenus(3,:)+1)).^(1./confBsVenus(3,:)));
BsCerIntdiff=(abs(confBsCerInt-BsCerIntdub))./1.96; %Standard Error of the Mean
SlopeCerIntndel=(((1./(BsCerIntdub(3,:))) + (log((BsCerIntdub(3,:)-1)./(BsCerIntdub(3,:)+1)))./((BsCerIntdub(3,:)).^2)).*BsCerIntdiff(3,:));
SlopePtCerIntSEM = SlopePtCerIntdub.*((SlopeCerIntndel.^2 + (BsCerIntdiff(1,:)./BsCerIntdub(1,:)).^2).^(1/2));

hold off
errorbar(0,(((BsCerInt(3,1).^2)-1)./(2*BsCerInt(3,1)))*FITmaxCerInt(1).*((BsCerInt(3,1)-1)./(BsCerInt(3,1)+1)).^(-1./BsCerInt(3,1)),SlopePtCerIntSEM(1),SlopePtCerIntSEM(2),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
hold on
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
%errorbar(uMttIPTGCherryFITal(round(4*IP(i))),(((BsCerInt(3,i+1).^2)-1)./(2*BsCerInt(3,i+1)))*FITmaxCerInt(i+1).*((BsCerInt(3,i+1)-1)./(BsCerInt(3,i+1)+1)).^(-1./BsCerInt(3,i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'horizontal','Linewidth',2,'Color',colorsch(i+2,:),'MarkerSize',12)
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),SlopePtCerInt(i+1),SlopePtCerIntSEM(2*(i)+1),SlopePtCerIntSEM(2*(i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
end
%plot(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),(((BsCerInt(3,9).^2)-1)./(2*BsCerInt(3,9)))*FITmaxCerInt(9).*((BsCerInt(3,9)-1)./(BsCerInt(3,9)+1)).^(-1./BsCerInt(3,9)),'o','Linewidth',2,'Color',colorsch(2,:))
legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (arbitrary units)')
ylabel('Slope at Inflection Point for Cerulean Integral vs ATc')
title(['Higher Cerulean Integral slope with TnpB'])
%% Slopes Venus
for j=1:13
SlopePtVenus(j)=(((BsVenus(3,j).^2)-1)./(2*BsVenus(3,j)))*FITmaxVenus(j).*((BsVenus(3,j)-1)./(BsVenus(3,j)+1)).^(-1./BsVenus(3,j));
end         
SlopePtVenusdub=[SlopePtVenus(1),SlopePtVenus(1),SlopePtVenus(2),SlopePtVenus(2),SlopePtVenus(3),SlopePtVenus(3),SlopePtVenus(4),SlopePtVenus(4),SlopePtVenus(5),SlopePtVenus(5),SlopePtVenus(6),SlopePtVenus(6),SlopePtVenus(7),SlopePtVenus(7),SlopePtVenus(8),SlopePtVenus(8),SlopePtVenus(9),SlopePtVenus(9),SlopePtVenus(10),SlopePtVenus(10),SlopePtVenus(11),SlopePtVenus(11),SlopePtVenus(12),SlopePtVenus(12),SlopePtVenus(13),SlopePtVenus(13)];
BsVenusdub=[BsVenus(:,1),BsVenus(:,1),BsVenus(:,2),BsVenus(:,2),BsVenus(:,3),BsVenus(:,3),BsVenus(:,4),BsVenus(:,4),BsVenus(:,5),BsVenus(:,5),BsVenus(:,6),BsVenus(:,6),BsVenus(:,7),BsVenus(:,7),BsVenus(:,8),BsVenus(:,8),BsVenus(:,9),BsVenus(:,9),BsVenus(:,10),BsVenus(:,10),BsVenus(:,11),BsVenus(:,11),BsVenus(:,12),BsVenus(:,12),BsVenus(:,13),BsVenus(:,13)];
%InflecPtVenus95perinter=real(confBsVenus(2,:).*((confBsVenus(3,:)-1)./(confBsVenus(3,:)+1)).^(1./confBsVenus(3,:)));
BsVenusdiff=(abs(confBsVenus-BsVenusdub))./1.96; %Standard Error of the Mean
SlopeVenusndel=(((1./(BsVenusdub(3,:))) + (log((BsVenusdub(3,:)-1)./(BsVenusdub(3,:)+1)))./((BsVenusdub(3,:)).^2)).*BsVenusdiff(3,:));
SlopePtVenusSEM = SlopePtVenusdub.*((SlopeVenusndel.^2 + (BsVenusdiff(1,:)./BsVenusdub(1,:)).^2).^(1/2));

hold off
errorbar(0,(((BsVenus(3,1).^2)-1)./(2.*BsVenus(3,1)))*FITmaxVenus(1).*((BsVenus(3,1)-1)./(BsVenus(3,1)+1)).^(-1./BsVenus(3,1)),SlopePtVenusSEM(1),SlopePtVenusSEM(2),plotmarkmat(1),'Linewidth',2,'Color',colorsch(1,:),'MarkerSize',25)
hold on
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:7
%errorbar(uMttIPTGCherryFITal(round(4*IP(i))),(((BsVenus(3,i+1).^2)-1)./(2.*BsVenus(3,i+1)))*FITmaxVenus(i+1).*((BsVenus(3,i+1)-1)./(BsVenus(3,i+1)+1)).^(-1./BsVenus(3,i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'horizontal','Linewidth',2,'Color',colorsch(i+2,:),'MarkerSize',12)
errorbar(uMttIPTGCherryFITal(round(4*IP(i))),SlopePtVenus(i+1),SlopePtVenusSEM(2*(i)+1),SlopePtVenusSEM(2*(i+1)),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3,'Color',colorsch(i+2,:),'MarkerSize',25)
end
%plot(uMptCt1pZSCherry(12)-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),(((BsVenus(3,9).^2)-1)./(2.*BsVenus(3,9)))*FITmaxVenus(9).*((BsVenus(3,9)-1)./(BsVenus(3,9)+1)).^(-1./BsVenus(3,9)),'o','Linewidth',2,'Color',colorsch(2,:))
% errorbar(0,SlopePtVenus(10),SlopePtVenusSEM(19),SlopePtVenusSEM(20),'o','Linewidth',3,'Color',colorsch(5,:))
% errorbar(0,SlopePtVenus(11),SlopePtVenusSEM(21),SlopePtVenusSEM(22),'o','Linewidth',3,'Color',colorsch(9,:))
legend('Tn4rev Only','in trans No IPTG','in trans 10uM IPTG','in trans 20uM IPTG','in trans 50uM IPTG','in trans 100uM IPTG','in trans 200uM IPTG','in trans 2000uM IPTG','Cis No IPTG','Non-excising strain No IPTG','Non-excising strain 2000uM IPTG')
xlabel('Cherry::TnpB fluorescence (arbitrary units)')
ylabel('Slope at Inflection Point for Venus vs ATc')
title(['Higher Venus slope with TnpB'])

%% Cherry Hill Plotting
hold off
plot(linspace(0, 2000,8000),uMttIPTGCherryFITal,'Linewidth',3,'Color',colorsch(12,:))
hold on
errorbar([1,10,20,50,100,200,2000],MttCherry-mean(uMpxpZSCherry)-0.9*min(uMttIPTGCherryFIT),errorCherry(2:8),'o','Linewidth',2,'Color',colorsch(12,:))
%,(serrMttIPTGCherry.^2+serrMIPTGCherry.^2).^(1/2)
set(gca,'xscale','log')
set(gca,'yscale','log')
title(['mCherry::TnpB as a Function of IPTG for Trans Combination of Tnrev and TnpB'])
ylabel(['mCherry::TnpB (abu)'])
xlabel(['IPTG (uM)'])

%% Cis Cherry Plotting
hold off
plot(linspace(0, 200,8000),uMptCt1pZSCherryFIT,'Linewidth',3,'Color',colorsch(2,:))
hold on
errorbar(atc021921,uMptCt1pZSCherry-min(uMptCt1pZSCherry)+iniMptCt1pZSCherry-1.23*iniMpxpZSCherry,(serrMptCt1pZSCherry.^2+serrMpxpZSCherry.^2).^(1/2),'o','Linewidth',2,'Color',colorsch(2,:))
%,(serrMttIPTGCherry.^2+serrMIPTGCherry.^2).^(1/2)
set(gca,'xscale','log')
set(gca,'yscale','log')
title(['mCherry::TnpB as a Function of ATc for Cis Combination of Tnrev and TnpB'])
ylabel(['mCherry::TnpB (abu)'])
xlabel(['ATc (ng/mL)'])
%% Cerulean Hill Function plotting
NNN=1000;
hold off
% % pause(1)
%  plot(linspace((min(atc021921)), max(atc021921),NNN),uMptpZSCerFITal,'Linewidth',3,'Color',colorsch(1,:))
%  hold on
%  errorbar(atc021921,netMptpZSCer-min(uMptpZSCerFIT)+min(uMtt10IPTGCerFIT),(serrMptpZSCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(1),'Linewidth',1,'Color',colorsch(1,:),'MarkerSize',10)
%  set(gca,'xscale','log')
%  %set(gca,'yscale','log')
%  pause(1)
%  plot(linspace((min(atc021921)), max(atc021921),NNN),uMptCt1pZSCerFITal,'Linewidth',3,'Color',colorsch(2,:))
% errorbar(atc021921,netMptCt1pZSCer-min(uMptCt1pZSCerFIT)+min(uMtt10IPTGCerFIT),(serrMptCt1pZSCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(2),'Linewidth',1,'Color',colorsch(2,:),'MarkerSize',10)
% hold on
% pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMttnoIPTGCerFITal,'Linewidth',3,'Color',colorsch(3,:))
hold on
errorbar(atc021921,netMttnoIPTGCer-min(uMttnoIPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMttnoIPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(3),'Linewidth',1,'Color',colorsch(3,:),'MarkerSize',15)
pause(1)
 hold on
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt10IPTGCerFITal,'Linewidth',3,'Color',colorsch(4,:))
errorbar(atc021921,netMtt10IPTGCer-min(uMtt10IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt10IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(4),'Linewidth',1,'Color',colorsch(4,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt20IPTGCerFITal,'Linewidth',3,'Color',colorsch(5,:))
errorbar(atc021921,netMtt20IPTGCer-min(uMtt20IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt20IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(5),'Linewidth',1,'Color',colorsch(5,:),'MarkerSize',15)
pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt30IPTGCerFITal,'Linewidth',3,'Color',colorsch(9,:))
% errorbar(atc021921,netMtt30IPTGCer-min(uMtt30IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt30IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),'o','Linewidth',1,'Color',colorsch(9,:))
% pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt50IPTGCerFITal,'Linewidth',3,'Color',colorsch(6,:))
errorbar(atc021921,netMtt50IPTGCer-min(uMtt50IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt50IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(6),'Linewidth',1,'Color',colorsch(6,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt100IPTGCerFITal,'Linewidth',3,'Color',colorsch(7,:))
errorbar(atc021921,netMtt100IPTGCer-min(uMtt100IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt100IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(7),'Linewidth',1,'Color',colorsch(7,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt200IPTGCerFITal,'Linewidth',3,'Color',colorsch(8,:))
errorbar(atc021921,netMtt200IPTGCer-min(uMtt200IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt200IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(8),'Linewidth',1,'Color',colorsch(8,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMttfullIPTGCerFITal,'Linewidth',3,'Color',colorsch(9,:))
errorbar(atc021921,netMttfullIPTGCer-min(uMttfullIPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMttfullIPTGCer.^2+serrMpxpZSCer.^2).^(1/2),plotmarkmat(9),'Linewidth',1,'Color',colorsch(9,:),'MarkerSize',15)
%%'Tn4rev only fit','Tn4rev only data','Cis fit','Cis data',
set(gca,'xscale','log')
%set(gca,'yscale','log')
xlabel('ATc (ng/mL)')
title(['Cerulean Fluorescence Change with IPTG'])
%set(gca,'Color',[0.85 0.85 0.85])
legend('Tn4rev only fit','Tn4rev only data','in cis fit','in cis data','in trans No IPTG fit','in trans No IPTG data')
%legend('in trans No IPTG fit','in trans No IPTG data','in trans 10 IPTG fit','in trans 10 IPTG data','in trans 20 IPTG fit','in trans 20 IPTG data','in trans 50 IPTG fit','in trans 50 IPTG data','in trans 100 IPTG fit','in trans 100 IPTG data','in trans 200 IPTG fit','in trans 200 IPTG data','in trans 2000 IPTG fit','in trans 2000 IPTG data')
ylabel(['Cerulean Fluorescence per cell (abu)'])
%legend('Trans No IPTG','Trans 10 IPTG','Trans 20 IPTG','Trans 30 IPTG','Trans 50 IPTG','Trans 100 IPTG','Trans 200 IPTG','Trans 2000 IPTG')

%% Cerulean INTEGRAL Hill Function plotting
NNN=1000;
hold off
pause(1)
 plot(linspace((min(atc021921)), max(atc021921),NNN),uMptpZSCerIntFITal,'Linewidth',3,'Color',colorsch(1,:))
 hold on
  errorbar(atc021921,netMptpZSCerIntal,(serrMptpZSCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(1),'Linewidth',1,'Color',colorsch(1,:),'MarkerSize',15)
  set(gca,'xscale','log')
  %set(gca,'yscale','log')
 pause(1)
 plot(linspace((min(atc021921)), max(atc021921),NNN),uMptCt1pZSCerIntFITal,'Linewidth',3,'Color',colorsch(2,:))
errorbar(atc021921,netMptCt1pZSCerIntal,(serrMptCt1pZSCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(2),'Linewidth',1,'Color',colorsch(2,:),'MarkerSize',15)
hold on
 pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMttnoIPTGCerIntFITal,'Linewidth',3,'Color',colorsch(3,:))
hold on
errorbar(atc021921,netMttnoIPTGCerIntal,(serrMttnoIPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(3),'Linewidth',1,'Color',colorsch(3,:),'MarkerSize',15)
% pause(1)
% hold on
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt10IPTGCerIntFITal,'Linewidth',3,'Color',colorsch(4,:))
% errorbar(atc021921,netMtt10IPTGCerIntal,(serrMtt10IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(4),'Linewidth',1,'Color',colorsch(4,:),'MarkerSize',15)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt20IPTGCerIntFITal,'Linewidth',3,'Color',colorsch(5,:))
% errorbar(atc021921,netMtt20IPTGCerIntal,(serrMtt20IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(5),'Linewidth',1,'Color',colorsch(5,:),'MarkerSize',15)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt50IPTGCerIntFITal,'Linewidth',3,'Color',colorsch(6,:))
% errorbar(atc021921,netMtt50IPTGCerIntal,(serrMtt50IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(6),'Linewidth',1,'Color',colorsch(6,:),'MarkerSize',15)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt100IPTGCerIntFITal,'Linewidth',3,'Color',colorsch(7,:))
% errorbar(atc021921,netMtt100IPTGCerIntal,(serrMtt100IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(7),'Linewidth',1,'Color',colorsch(7,:),'MarkerSize',15)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt200IPTGCerIntFITal,'Linewidth',3,'Color',colorsch(8,:))
% errorbar(atc021921,netMtt200IPTGCerIntal,(serrMtt200IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(8),'Linewidth',1,'Color',colorsch(8,:),'MarkerSize',15)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMttfullIPTGCerIntFITal,'Linewidth',3,'Color',colorsch(9,:))
% errorbar(atc021921,netMttfullIPTGCerIntal,(serrMttfullIPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),plotmarkmat(9),'Linewidth',1,'Color',colorsch(9,:),'MarkerSize',15)
%'Tn4rev only fit','Tn4rev only data','Cis fit','Cis data',
set(gca,'xscale','log')
set(gca,'yscale','log')
xlabel('aTc (ng/mL)')
title(['Cumulative Cerulean Fluorescence Change with aTc'])
%set(gca,'Color',[0.85 0.85 0.85])
legend('Tn4rev only fit','Tn4rev only data','in cis fit','in cis data','in trans No IPTG fit','in trans No IPTG data')
%legend('Trans No IPTG fit','Trans No IPTG data','Trans 10 IPTG fit','Trans 10 IPTG data','Trans 20 IPTG fit','Trans 20 IPTG data','Trans 50 IPTG fit','Trans 50 IPTG data','Trans 100 IPTG fit','Trans 100 IPTG data','Trans 200 IPTG fit','Trans 200 IPTG data','Trans 2000 IPTG fit','Trans 2000 IPTG data')
%legend('in trans No IPTG fit','in trans No IPTG data','in trans 10 IPTG fit','in trans 10 IPTG data','in trans 20 IPTG fit','in trans 20 IPTG data','in trans 50 IPTG fit','in trans 50 IPTG data','in trans 100 IPTG fit','in trans 100 IPTG data','in trans 200 IPTG fit','in trans 200 IPTG data','in trans 2000 IPTG fit','in trans 2000 IPTG data')
ylabel(['Cumulative Cerulean Fluorescence per cell (AU)'])
%legend('Trans No IPTG','Trans 10 IPTG','Trans 20 IPTG','Trans 30 IPTG','Trans 50 IPTG','Trans 100 IPTG','Trans 200 IPTG','Trans 2000 IPTG')
%% Non Excising Venus Hill Function Plotting
NNN=1000;
hold off
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZSnoIPTGVenusFITal,'Linewidth',3,'Color',colorsch(10,:))
hold on
errorbar(atc021921,netCZpVtApZSnoIPTGVenus-min(uCZpVtApZtBnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZSnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(10),'Linewidth',1,'Color',colorsch(10,:),'MarkerSize',15)
%-min(uCZpVtApZSnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT) Moved this from
%data because it was making part of it negative
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZSfullIPTGVenusFITal,'Linewidth',3,'Color',colorsch(11,:))
errorbar(atc021921,netCZpVtApZSfullIPTGVenus-min(uCZpVtApZSfullIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZSfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(11),'Linewidth',1,'Color',colorsch(11,:),'MarkerSize',10)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZtBnoIPTGVenusFITal,'Linewidth',3,'Color',colorsch(12,:))
errorbar(atc021921,netCZpVtApZtBnoIPTGVenus-min(uCZpVtApZtBnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZtBnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(1),'Linewidth',1,'Color',colorsch(12,:),'MarkerSize',15)
%-min(uCZpVtApZtBnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZtBfullIPTGVenusFITal,'Linewidth',3,'Color',colorsch(5,:))
errorbar(atc021921,netCZpVtApZtBfullIPTGVenus-min(uCZpVtApZtBfullIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZtBfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(2),'Linewidth',1,'Color',colorsch(5,:),'MarkerSize',10)
%'Tn4rev only fit','Tn4rev only data','Cis fit','Cis data',
set(gca,'xscale','log')
set(gca,'yscale','log')
xlabel('ATc (ng/mL)')
title(['Excision Site Removal: Venus fluorescence vs. ATc'])
%legend('Non-excising no IPTG fit','Non-excising no IPTG data','Non-excising full IPTG fit','Non-excising full IPTG data','Non-excising w/TnpB no IPTG fit','Non-excising w/TnpB no IPTG data','Non-excising w/TnpB full IPTG fit','Non-excising w/TnpB full IPTG data')
legend('Immobilized - TnpB - IPTG','','Immobilized - TnpB + IPTG','','Immobilized + TnpB - IPTG','','Immobilized + TnpB + IPTG','')
ylabel(['Venus Fluorescence per cell (abu)'])
%% Venus Hill Function plotting
NNN=1000;
hold off
  plot(linspace((min(atc021921)), max(atc021921),NNN),uMptpZSVenusFITal,'Linewidth',3,'Color',colorsch(1,:))
  hold on
 errorbar(atc021921,netMptpZSVenus-min(uMptpZSVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMptpZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(1),'Linewidth',1,'Color',colorsch(1,:),'MarkerSize',15)
% set(gca,'xscale','log')
 %set(gca,'yscale','log')
 pause(1)
 plot(linspace((min(atc021921)), max(atc021921),NNN),uMptCt1pZSVenusFITal,'Linewidth',3,'Color',colorsch(2,:))
errorbar(atc021921,netMptCt1pZSVenus-min(uMptCt1pZSVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMptCt1pZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(2),'Linewidth',1,'Color',colorsch(2,:),'MarkerSize',15)
hold on
 pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMttnoIPTGVenusFITal,'Linewidth',3,'Color',colorsch(3,:))
hold on
 errorbar(atc021921,netMttnoIPTGVenus-min(uMttnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMttnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(3),'Linewidth',1,'Color',colorsch(3,:),'MarkerSize',15)
pause(1)
hold on
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt10IPTGVenusFITal,'Linewidth',3,'Color',colorsch(4,:))
errorbar(atc021921,netMtt10IPTGVenus-min(uMtt10IPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMtt10IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(4),'Linewidth',1,'Color',colorsch(4,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt20IPTGVenusFITal,'Linewidth',3,'Color',colorsch(5,:))
errorbar(atc021921,netMtt20IPTGVenus-min(uMtt20IPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMtt20IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(5),'Linewidth',1,'Color',colorsch(5,:),'MarkerSize',15)
pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt30IPTGCerFITal,'Linewidth',3,'Color',colorsch(9,:))
% errorbar(atc021921,netMtt30IPTGCer-min(uMtt30IPTGCerFIT)+min(uMtt10IPTGCerFIT),(serrMtt30IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),'o','Linewidth',2,'Color',colorsch(9,:))
% pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt50IPTGVenusFITal,'Linewidth',3,'Color',colorsch(6,:))
errorbar(atc021921,netMtt50IPTGVenus-min(uMtt50IPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMtt50IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(6),'Linewidth',1,'Color',colorsch(6,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt100IPTGVenusFITal,'Linewidth',3,'Color',colorsch(7,:))
errorbar(atc021921,netMtt100IPTGVenus-min(uMtt100IPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMtt100IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(7),'Linewidth',1,'Color',colorsch(7,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMtt200IPTGVenusFITal,'Linewidth',3,'Color',colorsch(8,:))
errorbar(atc021921,netMtt200IPTGVenus-min(uMtt200IPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMtt200IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(8),'Linewidth',1,'Color',colorsch(8,:),'MarkerSize',15)
pause(1)
plot(linspace((min(atc021921)), max(atc021921),NNN),uMttfullIPTGVenusFITal,'Linewidth',3,'Color',colorsch(9,:))
errorbar(atc021921,netMttfullIPTGVenus-min(uMttfullIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrMttfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(9),'Linewidth',1,'Color',colorsch(9,:),'MarkerSize',15)
pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZSnoIPTGVenusFITal,'Linewidth',3,'Color',colorsch(10,:))
% hold on
% errorbar(atc021921,netCZpVtApZSnoIPTGVenus-min(uCZpVtApZSnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZSnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(10),'Linewidth',1,'Color',colorsch(10,:),'MarkerSize',10)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZSfullIPTGVenusFITal,'Linewidth',3,'Color',colorsch(11,:))
% errorbar(atc021921,netCZpVtApZSfullIPTGVenus-min(uCZpVtApZSfullIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZSfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(11),'Linewidth',1,'Color',colorsch(11,:),'MarkerSize',10)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZtBnoIPTGVenusFITal,'Linewidth',3,'Color',colorsch(12,:))
% errorbar(atc021921,netCZpVtApZtBnoIPTGVenus-min(uCZpVtApZtBnoIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZtBnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(1),'Linewidth',1,'Color',colorsch(12,:),'MarkerSize',10)
% pause(1)
% plot(linspace((min(atc021921)), max(atc021921),NNN),uCZpVtApZtBfullIPTGVenusFITal,'Linewidth',3,'Color',colorsch(13,:))
% errorbar(atc021921,netCZpVtApZtBfullIPTGVenus-min(uCZpVtApZtBfullIPTGVenusFIT)+min(uMtt10IPTGVenusFIT),(serrCZpVtApZtBfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(2),'Linewidth',1,'Color',colorsch(13,:),'MarkerSize',10)
%'Tn4rev only fit','Tn4rev only data','Cis fit','Cis data',
set(gca,'xscale','log')
%set(gca,'yscale','log')
xlabel('ATc (ng/mL)')
title(['Venus fluorescence Change with IPTG'])
%title('Introduction of TnpB: Venus Fluorescence vs. ATc')
%set(gca,'Color',[0.85 0.85 0.85])
legend('in trans No IPTG fit','in trans No IPTG data','in trans 10 IPTG fit','in trans 10 IPTG data','in trans 20 IPTG fit','in trans 20 IPTG data','in trans 50 IPTG fit','in trans 50 IPTG data','in trans 100 IPTG fit','in trans 100 IPTG data','in trans 200 IPTG fit','in trans 200 IPTG data','in trans 2000 IPTG fit','in trans 2000 IPTG data')
%legend('Tn4rev only fit','Tn4rev only data','in cis fit','in cis data','in trans No IPTG fit','in trans No IPTG data','Non-excising fit','Non-excising data')
%legend('Non-excising no IPTG fit','Non-excising no IPTG data','Non-excising full IPTG fit','Non-excising full IPTG data','Non-excising w/TnpB no IPTG fit','Non-excising w/TnpB no IPTG data','Non-excising w/TnpB full IPTG fit','Non-excising w/TnpB full IPTG data')
ylabel(['Venus Fluorescence per cell (abu)'])
%legend('Trans No IPTG','Trans 10 IPTG','Trans 20 IPTG','Trans 30 IPTG','Trans 50 IPTG','Trans 100 IPTG','Trans 200 IPTG','Trans 2000 IPTG')

%% Cer vs Venus
% Error bars need to be fixed to include both vertical and horizontal
hold off
errorbar(netMptpZSVenusal,netMptpZSCeral,(serrMptpZSCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMptpZSCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMptpZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMptpZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(1),'Linewidth',2,'Color',colorsch(1,:),'MarkerSize',15)
pause(2)
hold on
errorbar(netMptCt1pZSVenusal,netMptCt1pZSCeral,(serrMptCt1pZSCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMptCt1pZSCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMptCt1pZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMptCt1pZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(2),'Linewidth',2,'Color',colorsch(2,:),'MarkerSize',15)
pause(2)
errorbar(netMttnoIPTGVenusal,netMttnoIPTGCeral,(serrMttnoIPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMttnoIPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMttnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMttnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(3),'Linewidth',2,'Color',colorsch(3,:),'MarkerSize',15)
pause(2)
errorbar(netMtt10IPTGVenusal,netMtt10IPTGCeral,(serrMtt10IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt10IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt10IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt10IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(4),'Linewidth',2,'Color',colorsch(4,:),'MarkerSize',15)
pause(2)
errorbar(netMtt20IPTGVenusal,netMtt20IPTGCeral,(serrMtt20IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt20IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt20IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt20IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(5),'Linewidth',2,'Color',colorsch(5,:),'MarkerSize',15)
pause(2)
errorbar(netMtt50IPTGVenusal,netMtt50IPTGCeral,(serrMtt50IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt50IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt50IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt50IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(6),'Linewidth',2,'Color',colorsch(6,:),'MarkerSize',15)
pause(2)
errorbar(netMtt100IPTGVenusal,netMtt100IPTGCeral,(serrMtt100IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt100IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt100IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt100IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(7),'Linewidth',2,'Color',colorsch(7,:),'MarkerSize',15)
pause(2)
errorbar(netMtt200IPTGVenusal,netMtt200IPTGCeral,(serrMtt200IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt200IPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMtt200IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt200IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(8),'Linewidth',2,'Color',colorsch(8,:),'MarkerSize',15)
pause(2)
errorbar(netMttfullIPTGVenusal,netMttfullIPTGCeral,(serrMttfullIPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMttfullIPTGCer.^2+serrMpxpZSCer.^2).^(1/2),(serrMttfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMttfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(9),'Linewidth',2,'Color',colorsch(9,:),'MarkerSize',15)
xlabel('Venus Fluorescence per cell (abu)')
title(['Cerulean vs Venus-TnpA'])
ylabel(['Cerulean Fluorescence per cell (abu)'])
legend('Tn4rev Only','in cis','in trans No IPTG','in trans 10然 IPTG','in trans 20然 IPTG','in trans 50然 IPTG','in trans 100然 IPTG','in trans 200然 IPTG','in trans 2000然 IPTG')
%%
[xsort,m]=sort(netVenusalmat);
ysort= netCeralmat(m);
x=xsort(1:108);
y=ysort(1:108);
ycalcterm=[];
clear p yCalc1
[uCervsVenusFIT,BCervsVenus]=Hill_Fit(y,x);
% [mval,m]=sort(x);
% pause(2)
% plot(sort(x),yCalc1(m),'Linewidth',3)
%'Tn4rev Only','Cis Combo',
legend('Tn4rev Only','in cis','in trans No IPTG','in trans 10然 IPTG','in trans 20然 IPTG','in trans 50然 IPTG','in trans 100然 IPTG','in trans 200然 IPTG','in trans 2000然 IPTG',['Linear fit start=pt65, Rsq value=' num2str(Rsq1)])

%% Cer INTEGRAL vs Venus
% Error bars need to be fixed to include both vertical and horizontal
hold off
errorbar(netMptpZSVenusal,netMptpZSCerIntal,(serrMptpZSCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMptpZSCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMptpZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMptpZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(1),'Linewidth',2,'Color',colorsch(1,:),'MarkerSize',15)
pause(2)
hold on
errorbar(netMptCt1pZSVenusal,netMptCt1pZSCerIntal,(serrMptCt1pZSCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMptCt1pZSCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMptCt1pZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMptCt1pZSVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(2),'Linewidth',2,'Color',colorsch(2,:),'MarkerSize',15)
hold on
pause(2)
errorbar(netMttnoIPTGVenusal,netMttnoIPTGCerIntal,(serrMttnoIPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMttnoIPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMttnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMttnoIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(3),'Linewidth',2,'Color',colorsch(3,:),'MarkerSize',15)
hold on
pause(2)
errorbar(netMtt10IPTGVenusal,netMtt10IPTGCerIntal,(serrMtt10IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt10IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt10IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt10IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(4),'Linewidth',2,'Color',colorsch(4,:),'MarkerSize',15)
pause(2)
errorbar(netMtt20IPTGVenusal,netMtt20IPTGCerIntal,(serrMtt20IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt20IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt20IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt20IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(5),'Linewidth',2,'Color',colorsch(5,:),'MarkerSize',15)
pause(2)
errorbar(netMtt50IPTGVenusal,netMtt50IPTGCerIntal,(serrMtt50IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt50IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt50IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt50IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(6),'Linewidth',2,'Color',colorsch(6,:),'MarkerSize',15)
pause(2)
errorbar(netMtt100IPTGVenusal,netMtt100IPTGCerIntal,(serrMtt100IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt100IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt100IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt100IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(7),'Linewidth',2,'Color',colorsch(7,:),'MarkerSize',15)
pause(2)
 errorbar(netMtt200IPTGVenusal,netMtt200IPTGCerIntal,(serrMtt200IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt200IPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMtt200IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMtt200IPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(8),'Linewidth',2,'Color',colorsch(8,:),'MarkerSize',15)
 pause(2)
errorbar(netMttfullIPTGVenusal,netMttfullIPTGCerIntal,(serrMttfullIPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMttfullIPTGCerInt.^2+serrMpxpZSCerInt.^2).^(1/2),(serrMttfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),(serrMttfullIPTGVenus.^2+serrMpxpZSVenus.^2).^(1/2),plotmarkmat(9),'Linewidth',2,'Color',colorsch(9,:),'MarkerSize',15)
xlabel('Venus Fluorescence per cell (AU)')
title(['Cumulative Cerulean vs Venus-TnpA'])
ylabel(['Cumulative Cerulean Fluorescence per cell (AU)'])
%netVenusalmat=[netMptpZSVenusal,netMptCt1pZSVenusal,netMttnoIPTGVenusal,netMtt10IPTGVenusal,netMtt20IPTGVenusal,netMtt50IPTGVenusal,netMtt100IPTGVenusal,netMtt200IPTGVenusal,netMttfullIPTGVenusal];
[xsort,m]=sort(netVenusalmat);
ysort= netCerIntalmat(m);
x=xsort(65:108);
y=ysort(65:108);
ycalcterm=[];
clear p yCalc1
imax=1;
[p,S] = polyfit(x,y,imax);
[Y,DELTA]=polyval(p,x,S);
yCalc1=p(imax+1);
for i =1:imax
ycalcterm= p(i).*(transpose(x)).^(imax+1-i);
yCalc1 = yCalc1+ycalcterm;
end
Rsq1 = 1 - sum((transpose(y) - yCalc1).^2)/sum((y - mean(y)).^2);
[mval,m]=sort(x);
pause(2)
plot(sort(x),yCalc1(m),'Linewidth',3)
%'Tn4rev Only','Cis Combo',
legend('Tn4rev Only','in cis','in trans No IPTG','in trans 10然 IPTG','in trans 20然 IPTG','in trans 50然 IPTG','in trans 100然 IPTG','in trans 200然 IPTG','in trans 2000然 IPTG',['Linear fit start=pt65, Rsq value=' num2str(Rsq1)])

%% GR induction TnpB alone
hold off
%MttnoaTcgr=([gr062520e(1:2,:);gr062620e(1:2,:);gr072020e(1:2,:);gr080720e(1:2,:);gr080920e(1:2,:);gr081920e(1:2,:)])./max(mean([gr062520e(1:2,:);gr062620e(1:2,:);gr072020e(1:2,:);gr080720e(1:2,:);gr080920e(1:2,:);gr081920e(1:2,:)]))
%[uMttnoaTcgr,serrMttnoaTcgr]=meanNstderr(MttnoaTcgr);
errorbar(uMttIPTGCherryFITal(round(4*[0.25,10.25,20.25,50.25,75.25,100.25,200.25,300.25,500.25,750.25,1000.25,2000])),mean([gr062520e(1:2,:);gr062620e(1:2,:);gr072020e(1:2,:);gr080720e(1:2,:);gr080920e(1:2,:);gr081920e(1:2,:)])./max(mean([gr062520e(1:2,:);gr062620e(1:2,:);gr072020e(1:2,:);gr080720e(1:2,:);gr080920e(1:2,:);gr081920e(1:2,:)])),((serrMttnoaTcgr.^2+serrMttnoaTcgr.^2).^(1/2)),((serrMttnoaTcgr.^2+serrMttnoaTcgr.^2).^(1/2)),errorCherryMttnoaTc,errorCherryMttnoaTc,'o','Linewidth',3)
%plot(IPTG,mean([gr062520e(1:2,:);gr062620e(1:2,:);gr072020e(1:2,:);gr080720e(1:2,:);gr080920e(1:2,:);gr081920e(1:2,:)])./max(mean([gr062520e(1:2,:);gr062620e(1:2,:);gr072020e(1:2,:);gr080720e(1:2,:);gr080920e(1:2,:);gr081920e(1:2,:)])),'-o','Linewidth',3)
hold on
%set(gca,'xscale','log')
%set(gca,'yscale','log')
%plot(IPTG,(uMpxpZCt1gr)./max(uMpxpZCt1gr),'-o','Linewidth',3)
errorbar(uMpxpZCt1Cherry-min(uMpxpZSCherry)-0.9*min(uMpxpZCt1Cherry-min(uMpxpZSCherry)),(uMpxpZCt1gr)./max(uMpxpZCt1gr),((serrMpxpZCt1gr.^2+serrMpxpZSgr.^2).^(1/2))./max(uMpxpZCt1gr),((serrMpxpZCt1gr.^2+serrMpxpZSgr.^2).^(1/2))./max(uMpxpZCt1gr),(serrMpxpZCt1Cherry.^2+serrMpxpZSCherry.^2).^(1/2),(serrMpxpZCt1Cherry.^2+serrMpxpZSCherry.^2).^(1/2),'o','Linewidth',3)
ylabel(['Normalized GR'])
xlabel(['mCherry::TnpB'])
title(['Growth Defect From TnpB With and Without Active Transposon'])
% plot(10,uCZpVtApZSnoIPTGgr(2)./uCZpVtApZSnoIPTGgr(2),'go','Linewidth',3)
% plot(2000,uCZpVtApZSfullIPTGgr(2)./uCZpVtApZSnoIPTGgr(2),'go','Linewidth',3)
% plot(10,uCZpVtApZtBnoIPTGgr(2)./uCZpVtApZtBnoIPTGgr(2),'ko','Linewidth',3)
% plot(2000,uCZpVtApZtBfullIPTGgr(2)./uCZpVtApZtBnoIPTGgr(2),'ko','Linewidth',3)
legend('TnpB introduced in trans with Tn4rev, no atc','TnpB only','Non excising no TnpB 0 IPTG, normalized to no IPTG','Non excising no TnpB 2000uM IPTG, normalized to no IPTG','Non excising w/ TnpB 0uM IPTG, normalized to no IPTG','Non excising w/ TnpB 2000uM IPTG, normalized to no IPTG')
%% GR non-excising strains
mintohrs=60;
hold off
errorbar(netCZpVtApZSnoIPTGVenus(2:11),mintohrs.*uCZpVtApZSnoIPTGgr(2:11),mintohrs.*serrCZpVtApZSnoIPTGgr(2:11),mintohrs.*serrCZpVtApZSnoIPTGgr(2:11),(serrCZpVtApZSnoIPTGVenus(2:11).^2+serrMpxpZSVenus(2:11).^2).^(1/2),(serrCZpVtApZSnoIPTGVenus(2:11).^2+serrMpxpZSVenus(2:11).^2).^(1/2),plotmarkmat(10),'Linewidth',3,'Color',colorsch(10,:),'MarkerSize',25)
pause(1)
hold on
errorbar(netCZpVtApZSfullIPTGVenus(2:11),mintohrs.*uCZpVtApZSfullIPTGgr(2:11),mintohrs.*serrCZpVtApZSfullIPTGgr(2:11),mintohrs.*serrCZpVtApZSfullIPTGgr(2:11),(serrCZpVtApZSfullIPTGVenus(2:11).^2+serrMpxpZSVenus(2:11).^2).^(1/2),(serrCZpVtApZSfullIPTGVenus(2:11).^2+serrMpxpZSVenus(2:11).^2).^(1/2),plotmarkmat(11),'Linewidth',3,'Color',colorsch(11,:),'MarkerSize',25)
pause(1)
errorbar(netCZpVtApZtBnoIPTGVenus(2:11),mintohrs.*uCZpVtApZtBnoIPTGgr(2:11),mintohrs.*serrCZpVtApZtBnoIPTGgr(2:11),mintohrs.*serrCZpVtApZtBnoIPTGgr(2:11),(serrCZpVtApZtBnoIPTGVenus(2:11).^2+serrMpxpZSVenus(2:11).^2).^(1/2),(serrCZpVtApZtBnoIPTGVenus(2:11).^2+serrMpxpZSVenus(2:11).^2).^(1/2),plotmarkmat(1),'Linewidth',3,'Color',colorsch(12,:),'MarkerSize',25)
pause(1)
errorbar(netCZpVtApZtBfullIPTGVenus(2:12),mintohrs.*uCZpVtApZtBfullIPTGgr(2:12),mintohrs.*serrCZpVtApZtBfullIPTGgr(2:12),mintohrs.*serrCZpVtApZtBfullIPTGgr(2:12),(serrCZpVtApZtBfullIPTGVenus(2:12).^2+serrMpxpZSVenus(2:12).^2).^(1/2),(serrCZpVtApZtBfullIPTGVenus(2:12).^2+serrMpxpZSVenus(2:12).^2).^(1/2),plotmarkmat(2),'Linewidth',3,'Color',colorsch(5,:),'MarkerSize',25)
% xlabel('Venus Fluorescence (arbitrary units)')
% title(['Growth Rate for Immobilized TE'])
% ylabel(['Growth Rate (db/hr)'])
% legend('Immobilized - TnpB - IPTG','Immobilized - TnpB + IPTG','Immobilized + TnpB - IPTG','Immobilized + TnpB + IPTG')

%%  GR Fit to Venus normalized
NNN=1000000;
hold off
plot(linspace((min(netMptpZSVenus)), max(netMptpZSVenus),NNN),exp(real(GR_DecayFitMptpZS))./max(exp(real(GR_DecayFitMptpZS))),'Linewidth',3,'Color',colorsch(1,:))
hold on
errorbar(netMptpZSVenus(2:12),(uMptpZSgr(2:12))./max(exp(real(GR_DecayFitMptpZS))),serrMptpZSgr(2:12)./max(exp(real(GR_DecayFitMptpZS))),'o','Linewidth',2,'Color',colorsch(1,:))
pause(1)
plot(linspace((min(netMptCt1pZSVenus)), max(netMptCt1pZSVenus),NNN),exp(GR_DecayFitMptCt1pZS)./max(exp(GR_DecayFitMptCt1pZS)),'Linewidth',3,'Color',colorsch(2,:))
errorbar(netMptCt1pZSVenus(2:12),(uMptCt1pZSgr(2:12))./max(exp(GR_DecayFitMptCt1pZS)),serrMptCt1pZSgr(2:12)./max(exp(GR_DecayFitMptCt1pZS)),'o','Linewidth',2,'Color',colorsch(2,:))
pause(1)
plot(linspace((min(netMttnoIPTGVenus)), max(netMttnoIPTGVenus),NNN),exp(real(GR_DecayFitnoIPTG))./max(exp(real(GR_DecayFitnoIPTG))),'Linewidth',3,'Color',colorsch(3,:))
hold on
errorbar(netMttnoIPTGVenus(2:12),(uMttnoIPTGgr(2:12)./max(exp(real(GR_DecayFitnoIPTG)))),serrMttnoIPTGgr(2:12)./max(exp(real(GR_DecayFitnoIPTG))),'o','Linewidth',2,'Color',colorsch(3,:))
pause(1)
plot(linspace((min(netMtt10IPTGVenus)), max(netMtt10IPTGVenus),NNN),exp(real(GR_DecayFit10IPTG))./max(exp(real(GR_DecayFit10IPTG))),'Linewidth',3,'Color',colorsch(4,:))
errorbar(netMtt10IPTGVenus(2:12),(uMtt10IPTGgr(2:12)./max(exp(real(GR_DecayFit10IPTG)))),serrMtt10IPTGgr(2:12)./max(exp(real(GR_DecayFit10IPTG))),'o','Linewidth',2,'Color',colorsch(4,:))
pause(1)
plot(linspace((min(netMtt20IPTGVenus)), max(netMtt20IPTGVenus),NNN),exp(real(GR_DecayFit20IPTG))./max(exp(real(GR_DecayFit20IPTG))),'Linewidth',3,'Color',colorsch(5,:))
errorbar(netMtt20IPTGVenus(2:12),(uMtt20IPTGgr(2:12)./max(exp(real(GR_DecayFit20IPTG)))),serrMtt20IPTGgr(2:12)./max(exp(real(GR_DecayFit20IPTG))),'o','Linewidth',2,'Color',colorsch(5,:))
pause(1)
plot(linspace((min(netMtt50IPTGVenus)), max(netMtt50IPTGVenus),NNN),exp(real(GR_DecayFit50IPTG))./max(exp(real(GR_DecayFit50IPTG))),'Linewidth',3,'Color',colorsch(6,:))
errorbar(netMtt50IPTGVenus(2:12),(uMtt50IPTGgr(2:12)./max(exp(real(GR_DecayFit50IPTG)))),serrMtt50IPTGgr(2:12)./max(exp(real(GR_DecayFit50IPTG))),'o','Linewidth',2,'Color',colorsch(6,:))
pause(1)
plot(linspace((min(netMtt100IPTGVenus)), max(netMtt100IPTGVenus),NNN),exp(real(GR_DecayFit100IPTG))./max(exp(real(GR_DecayFit100IPTG))),'Linewidth',3,'Color',colorsch(7,:))
errorbar(netMtt100IPTGVenus(2:12),(uMtt100IPTGgr(2:12)./max(exp(real(GR_DecayFit100IPTG)))),serrMtt100IPTGgr(2:12)./max(exp(real(GR_DecayFit100IPTG))),'o','Linewidth',2,'Color',colorsch(7,:))
pause(1)
plot(linspace((min(netMtt200IPTGVenus)), max(netMtt200IPTGVenus),NNN),exp(real(GR_DecayFit200IPTG))./max(exp(real(GR_DecayFit200IPTG))),'Linewidth',3,'Color',colorsch(8,:))
errorbar(netMtt200IPTGVenus(2:12),(uMtt200IPTGgr(2:12)./max(exp(real(GR_DecayFit200IPTG)))),serrMtt200IPTGgr(2:12)./max(exp(real(GR_DecayFit200IPTG))),'o','Linewidth',2,'Color',colorsch(8,:))
pause(1)
plot(linspace((min(netMttfullIPTGVenus)), max(netMttfullIPTGVenus),NNN),exp(real(GR_DecayFitfullIPTG))./max(exp(real(GR_DecayFitfullIPTG))),'Linewidth',3,'Color',colorsch(9,:))
errorbar(netMttfullIPTGVenus(2:12),(uMttfullIPTGgr(2:12)./max(exp(real(GR_DecayFitfullIPTG)))),serrMttfullIPTGgr(2:12)./max(exp(real(GR_DecayFitfullIPTG))),'o','Linewidth',2,'Color',colorsch(9,:))


plot(linspace((min(netCZpVtApZtBnoIPTGVenus)), max(netCZpVtApZtBnoIPTGVenus),NNN),exp(real(GR_DecayFitCZpVtApZtBnoIPTG))./max(exp(real(GR_DecayFitCZpVtApZtBnoIPTG))),'Linewidth',3,'Color',colorsch(10,:))
errorbar(netCZpVtApZtBnoIPTGVenus(2:12),(uCZpVtApZtBnoIPTGgr(2:12)./max(exp(real(GR_DecayFitCZpVtApZtBnoIPTG)))),serrCZpVtApZtBnoIPTGgr(2:12)./max(exp(real(GR_DecayFitCZpVtApZtBnoIPTG))),'o','Linewidth',2,'Color',colorsch(10,:))
pause(1)
plot(linspace((min(netCZpVtApZtBfullIPTGVenus)), max(netCZpVtApZtBfullIPTGVenus),NNN),exp(real(GR_DecayFitCZpVtApZtBfullIPTG))./max(exp(real(GR_DecayFitCZpVtApZtBfullIPTG))),'Linewidth',3,'Color',colorsch(11,:))
errorbar(netCZpVtApZtBfullIPTGVenus(2:12),(uCZpVtApZtBfullIPTGgr(2:12)./max(exp(real(GR_DecayFitCZpVtApZtBfullIPTG)))),serrCZpVtApZtBfullIPTGgr(2:12)./max(exp(real(GR_DecayFitCZpVtApZtBfullIPTG))),'o','Linewidth',2,'Color',colorsch(11,:))
% 
% set(gca,'xscale','log')
% set(gca,'yscale','log')
xlabel('Venus fluorescence per cell')
title(['Normalized Growth Rate'])
%set(gca,'Color',[0.85 0.85 0.85])
ylabel(['Normalized Growth Rate'])
legend('Tn4rev Only','Tn4rev Only','Cis Combo','Cis Combo','Trans combination 0uM IPTG','Trans combination 0uM IPTG','10uM IPTG','10uM IPTG','20uM IPTG','20uM IPTG','50uM IPTG','50uM IPTG','100uM IPTG','100uM IPTG','200uM IPTG','200uM IPTG','2000uM IPTG','2000uM IPTG','Non-excising with TnpB no IPTG','Non-excising with TnpB no IPTG','Non-excising with TnpB full IPTG','Non-excising with TnpB full IPTG')

%%  GR Fit normalized
NNN=1000000;
hold off
plot(linspace((min(netMptpZSCerInt)), max(netMptpZSCerInt),NNN),exp(real(GR_DecayFitMptpZS))./max(exp(real(GR_DecayFitMptpZS))),'Linewidth',3,'Color',colorsch(1,:))
hold on
errorbar(netMptpZSCerInt(2:12),(uMptpZSgr(2:12))./max(exp(real(GR_DecayFitMptpZS))),serrMptpZSgr(2:12)./max(exp(real(GR_DecayFitMptpZS))),serrMptpZSgr(2:12)./max(exp(real(GR_DecayFitMptpZS))),(serrMptpZSCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMptpZSCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(1),'Linewidth',2,'Color',colorsch(1,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMptCt1pZSCerInt)), max(netMptCt1pZSCerInt),NNN),exp(GR_DecayFitMptCt1pZS)./max(exp(GR_DecayFitMptCt1pZS)),'Linewidth',3,'Color',colorsch(2,:))
errorbar(netMptCt1pZSCerInt(2:12),(uMptCt1pZSgr(2:12))./max(exp(GR_DecayFitMptCt1pZS)),serrMptCt1pZSgr(2:12)./max(exp(GR_DecayFitMptCt1pZS)),serrMptCt1pZSgr(2:12)./max(exp(GR_DecayFitMptCt1pZS)),(serrMptCt1pZSCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMptCt1pZSCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(2),'Linewidth',2,'Color',colorsch(2,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMttnoIPTGCerInt)), max(netMttnoIPTGCerInt),NNN),exp(real(GR_DecayFitnoIPTG))./max(exp(real(GR_DecayFitnoIPTG))),'Linewidth',3,'Color',colorsch(3,:))
hold on
errorbar(netMttnoIPTGCerInt(2:12),(uMttnoIPTGgr(2:12)./max(exp(real(GR_DecayFitnoIPTG)))),serrMttnoIPTGgr(2:12)./max(exp(real(GR_DecayFitnoIPTG))),serrMttnoIPTGgr(2:12)./max(exp(real(GR_DecayFitnoIPTG))),(serrMttnoIPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMttnoIPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(3),'Linewidth',2,'Color',colorsch(3,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMtt10IPTGCerInt)), max(netMtt10IPTGCerInt),NNN),exp(real(GR_DecayFit10IPTG))./max(exp(real(GR_DecayFit10IPTG))),'Linewidth',3,'Color',colorsch(4,:))
errorbar(netMtt10IPTGCerInt(2:12),(uMtt10IPTGgr(2:12)./max(exp(real(GR_DecayFit10IPTG)))),serrMtt10IPTGgr(2:12)./max(exp(real(GR_DecayFit10IPTG))),serrMtt10IPTGgr(2:12)./max(exp(real(GR_DecayFit10IPTG))),(serrMtt10IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMtt10IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(4),'Linewidth',2,'Color',colorsch(4,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMtt20IPTGCerInt)), max(netMtt20IPTGCerInt),NNN),exp(real(GR_DecayFit20IPTG))./max(exp(real(GR_DecayFit20IPTG))),'Linewidth',3,'Color',colorsch(5,:))
errorbar(netMtt20IPTGCerInt(2:12),(uMtt20IPTGgr(2:12)./max(exp(real(GR_DecayFit20IPTG)))),serrMtt20IPTGgr(2:12)./max(exp(real(GR_DecayFit20IPTG))),serrMtt20IPTGgr(2:12)./max(exp(real(GR_DecayFit20IPTG))),(serrMtt20IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMtt20IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(5),'Linewidth',2,'Color',colorsch(5,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMtt50IPTGCerInt)), max(netMtt50IPTGCerInt),NNN),exp(real(GR_DecayFit50IPTG))./max(exp(real(GR_DecayFit50IPTG))),'Linewidth',3,'Color',colorsch(6,:))
errorbar(netMtt50IPTGCerInt(2:12),(uMtt50IPTGgr(2:12)./max(exp(real(GR_DecayFit50IPTG)))),serrMtt50IPTGgr(2:12)./max(exp(real(GR_DecayFit50IPTG))),serrMtt50IPTGgr(2:12)./max(exp(real(GR_DecayFit50IPTG))),(serrMtt50IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMtt50IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(6),'Linewidth',2,'Color',colorsch(6,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMtt100IPTGCerInt)), max(netMtt100IPTGCerInt),NNN),exp(real(GR_DecayFit100IPTG))./max(exp(real(GR_DecayFit100IPTG))),'Linewidth',3,'Color',colorsch(7,:))
errorbar(netMtt100IPTGCerInt(2:12),(uMtt100IPTGgr(2:12)./max(exp(real(GR_DecayFit100IPTG)))),serrMtt100IPTGgr(2:12)./max(exp(real(GR_DecayFit100IPTG))),serrMtt100IPTGgr(2:12)./max(exp(real(GR_DecayFit100IPTG))),(serrMtt100IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMtt10IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(7),'Linewidth',2,'Color',colorsch(7,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMtt200IPTGCerInt)), max(netMtt200IPTGCerInt),NNN),exp(real(GR_DecayFit200IPTG))./max(exp(real(GR_DecayFit200IPTG))),'Linewidth',3,'Color',colorsch(8,:))
errorbar(netMtt200IPTGCerInt(2:12),(uMtt200IPTGgr(2:12)./max(exp(real(GR_DecayFit200IPTG)))),serrMtt200IPTGgr(2:12)./max(exp(real(GR_DecayFit200IPTG))),serrMtt200IPTGgr(2:12)./max(exp(real(GR_DecayFit200IPTG))),(serrMtt200IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMtt200IPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(8),'Linewidth',2,'Color',colorsch(8,:),'MarkerSize',15)
pause(1)
plot(linspace((min(netMttfullIPTGCerInt)), max(netMttfullIPTGCerInt),NNN),exp(real(GR_DecayFitfullIPTG))./max(exp(real(GR_DecayFitfullIPTG))),'Linewidth',3,'Color',colorsch(9,:))
errorbar(netMttfullIPTGCerInt(2:12),(uMttfullIPTGgr(2:12)./max(exp(real(GR_DecayFitfullIPTG)))),serrMttfullIPTGgr(2:12)./max(exp(real(GR_DecayFitfullIPTG))),serrMttfullIPTGgr(2:12)./max(exp(real(GR_DecayFitfullIPTG))),(serrMttfullIPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),(serrMttfullIPTGCerInt(2:12).^2+serrMpxpZSCerInt(2:12).^2).^(1/2),plotmarkmat(9),'Linewidth',2,'Color',colorsch(9,:),'MarkerSize',15)
% 
% set(gca,'xscale','log')
% set(gca,'yscale','log')
title('Normalized Growth Rate Change with IPTG')
xlabel('Cumulative Cerulean Fluorescence per cell (abu)')
%set(gca,'Color',[0.85 0.85 0.85])
ylabel(['Normalized Growth Rate'])
legend('Tn4rev Only fit','Tn4rev Only data','in cis fit','in cis data','in trans No IPTG fit','in trans No IPTG data','in trans 10 IPTG fit','in trans 10 IPTG data','in trans 20 IPTG fit','in trans 20 IPTG data','in trans 50 IPTG fit','in trans 50 IPTG data','in trans 100 IPTG fit','in trans 100 IPTG data','in trans 200 IPTG fit','in trans 200 IPTG data','in trans 2000 IPTG fit','in trans 2000 IPTG data')
%% Growth Rate Decay Coefficients vs mCherry::TnpB
hold off
IP=[0.25,10.25,20.25,50.25,100.25,200.25,2000];
for i=1:length(IP)
errorbar(uMttIPTGCherryFITal(round(4*Induc(i))),real(GRfitvar(2,i+1))./((real(GRfitvar(2,1)))),abs(confBsgr(2,2*i+1)-real(GRfitvardub(2,2*(i+1))))./(1.96.*(real(GRfitvar(2,1)))),abs(confBsgr(2,i+1)-real(GRfitvardub(2,i+1)))./(1.96.*(real(GRfitvar(2,1)))),errorCherry(i+1),errorCherry(i+1),plotmarkmat(i+2),'Linewidth',3, 'Color',colorsch(i+2,:),'MarkerSize',25)
hold on
end
%set(gca,'xscale','log')
hold on
errorbar(0,real(GRfitvar(2,1))./(real(GRfitvar(2,1))),abs(confBsgr(2,1)-real(GRfitvardub(2,1)))./(1.96.*(real(GRfitvar(2,1)))),plotmarkmat(1),'Linewidth',3,'Color',colorsch(1,:),'MarkerSize',25)
errorbar(0,real(GRfitvar(2,9))./(real(GRfitvar(2,1))),abs(confBsgr(2,9)-real(GRfitvardub(2,9)))./(1.96.*(real(GRfitvar(2,1)))),plotmarkmat(2),'Linewidth',3,'Color',colorsch(2,:),'MarkerSize',25)
%xlabel('Cherry::TnpB fluorescence (abu)')
%ylabel('Coefficient of Exponential Decay of Growth Rate, b (abu)')
%title('Greater Decay of Growth Rate With Increased Excision Events')
%legend('TnpB in trans with Tn4rev','Tn4rev Only','TnpB in cis with Tn4rev')
%% Venus Decay
hold off
plot((netMttnoIPTGVenus), (mean(MttnoIPTGVenusdecaymat.*[MttnoIPTGgrmat(1:8,:);MttnoIPTGgrmat(17:24,:)])),'-o')
hold on
pause(1)
plot((netMtt10IPTGVenus), (mean(Mtt10IPTGVenusdecaymat.*Mtt10IPTGgrmat)),'-o')
pause(1)
plot((netMtt20IPTGVenus), (mean(Mtt20IPTGVenusdecaymat.*Mtt20IPTGgrmat)),'-o')
pause(1)
plot((netMtt50IPTGVenus), (mean(Mtt50IPTGVenusdecaymat.*Mtt50IPTGgrmat)),'-o')
pause(1)
plot((netMtt100IPTGVenus), (mean(Mtt100IPTGVenusdecaymat.*Mtt100IPTGgrmat)),'-o')
pause(1)
plot((netMtt200IPTGVenus), (mean(Mtt200IPTGVenusdecaymat.*Mtt200IPTGgrmat)),'-o')
pause(1)
plot((netMttfullIPTGVenus), (mean(MttfullIPTGVenusdecaymat.*MttfullIPTGgrmat)),'-o')
pause(1)
plot((netMpxpZSVenus), (mean(MpxpZSVenusdecaymat.*MpxpZSgrmat(9:24,:))),'-o')
plot((netMptpZSVenus), (mean(MptpZSVenusdecaymat.*MptpZSgrmat)),'-o')

%%
hold off
plot(uMttIPTGCherryFITal(round(4*[0.25,10.25,20.25,50.25,100.25,200.25,2000])),Bs(2,2:8).*((Bs(3,2:8)-1)./(Bs(3,2:8)+1)).^(1./Bs(3,2:8)),'o','Linewidth',3)
%%
hold off
plot(uMttIPTGCherryFITal(round(4*[0.25,10.25,20.25,50.25,100.25,200.25,2000])),BsVenus(2,2:8).*((BsVenus(3,2:8)-1)./(BsVenus(3,2:8)+1)).^(1./BsVenus(3,2:8)),'o','Linewidth',3)