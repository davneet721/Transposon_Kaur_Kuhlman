%% Linear Regression Fit to OD of Plate Reader Data
OD3D = OD0407213D(:,:,1:length(OD0407213D));                %Imported Data Set provided in the .mat file
Flour3D=Venus0407213D(:,:,1:length(OD0407213D));
TIME=TIME040721(1:length(OD0407213D));
dim1=8;                                                     % Dimensions of the 96-well plate 8x12
dim2=12;
% delOD=delOD040721e;                                       % Saved Value for OD background  
% Venlinti=Venlinti040721;                                  % Saved for Venus Fluorescence and used to determine Venus decay
% CerLinFit=CerLinFit040721rg1;                             % Determined for first slope region of Cerulean Fluorescence
% delFlour=delCer040721;                                    % Saved Value for fluorescence background
 %gr=gr040721e;                                             % Saved Value for growth rate for each well
% cycles=206;                                               % Number of cycles run in experiment, total time = 10 min * cycle number
%% If delOD and delFlour are already determined
%OD3D = (OD3D-delOD);
%Flour3D=Flour3D-delFlour;
%% Check out the data and where the exponential phase is
plottick =1;
for i =1:dim1
for  j = 1:dim2
subplot(dim1,dim2,plottick)
hold off
 plot(TIME,log(squeeze(OD3D(i,j,:))),'linewidth',3)
 title([num2str(i) ' ' num2str(j)])
plottick = plottick +1;
set(gca,'yscale','log')
%set(gca,'xscale','log')
end
end
%% AND where the fluorescence tops off
plottick =1;
for i =1:dim1
for  j = 1:dim2
subplot(dim1,dim2,plottick)
hold off
plot((squeeze((Flour3D(i,j,:)))),'b')
title([num2str(i) ' ' num2str(j)])
plottick = plottick +1;
end
end

%% Finding the Background to subtract
startexp=50; 
exprange=100;
Bstepnum=1000;
log2OD=zeros(dim1,dim2,length(OD3D(1,1,startexp:exprange)));
kinks=zeros(Bstepnum,1);
delOD=zeros(dim1,dim2);
B=zeros(Bstep,1);
    for i= 1:dim1
         for j = 1:dim2
            Bmax=1*min(OD3D(i,j,:));
            Bmin=0.9*min(OD3D(i,j,:));
            for Bstep=1:Bstepnum
                B(Bstep)=Bmin + (Bstep-1)*(Bmax-Bmin)/(Bstepnum-1);
                log2OD(i,j,:) = log2(((((OD3D(i,j,startexp:exprange)))))-B(Bstep));
                
                x=transpose(TIME(startexp:exprange));
                tlength = length(x);
                y= squeeze(log2OD(i,j,:));
                p = polyfit(x,y,1);
                yCalc1 = p(1)*transpose(x) +p(2);
                Rsq1 = 1 - sum((transpose(y) - yCalc1).^2)/sum((y - mean(y)).^2);
                kinks(Bstep)=Rsq1;
                
            end
            maximum = max(kinks);
            [b]=find(kinks==maximum);
             delOD(i,j)=B(b);
        end
    end
    
%% Finding the Fluorescence Background to subtract WITHOUT Range
startexp=55;
exprange=129;
FBstepnum=1000;
log2OD=zeros(dim1,dim2,length(OD3D(1,1,startexp:exprange)));
Fkinks=zeros(FBstepnum,1);
delFlour=zeros(dim1,dim2);
FB=zeros(FBstep,1);
    for i= 1:dim1
         for j = 1:dim2
            FBmax=1*min(Flour3D(i,j,:));
            FBmin=0.95*min(Flour3D(i,j,:));
            for Bstep=1:Bstepnum
                FB(Bstep)=FBmin + (FBstep-1)*(FBmax-FBmin)/(FBstepnum-1);
                log2OD(i,j,:) = log2(((((OD3D(i,j,startexp:exprange)))))-FB(FBstep));
                
                x=transpose(TIME(startexp:exprange));
                tlength = length(x);
                y= squeeze(log2OD(i,j,:));
                p = polyfit(x,y,1);
                yCalc1 = p(1)*transpose(x) +p(2);
                FRsq1 = 1 - sum((transpose(y) - yCalc1).^2)/sum((y - mean(y)).^2);
                Fkinks(FBstep)=FRsq1;
            end
            maximum = max(Fkinks);
            [fb]=find(Fkinks==maximum);
             delFlour(i,j)=FB(fb);
        end
    end
%% Check what the log curves look like after the background subtraction
OD3Dnoback = [];
Flour3Dnoback =[];
for i = 1:dim1
    for j = 1:dim2 
        OD3Dnoback(i,j,:) = (OD3D(i,j,:)-delOD(i,j));
        OD3Dnoback(i,j,:) = (OD3D(i,j,:)-(OD3D(i,j,1)));
        Flour3Dnoback(i,j,:) = (Flour3D(i,j,:)- delFlour(i,j));
        Flour3Dnoback(i,j,:)= (Flour3D(i,j,:)- Flour3D(i,j,1));
    end
end
%% Check if background subtraction looks good
plottick =1;
for i =1:dim1
for  j = 1:dim2
subplot(dim1,dim2,plottick)
hold off
plot(log(squeeze((OD3D(i,j,:)))),'b')
hold on
plot(log(squeeze((OD3Dnoback(i,j,:)))),'r')
title([num2str(i) ' ' num2str(j)])
%axis([0 160 min(min(min(log(OD3Dnoback(:,:,1:160))))) max(max(max(log(OD3Dnoback(:,:,1:160)))))])
plottick = plottick +1;
end
end

%% AND for the fluorescence
plottick =1;
for i =1:dim1
for  j = 1:dim2
subplot(dim1,dim2,plottick)
hold off
plot(log(squeeze((Flour3D(i,j,:)))),'b')
hold on
plot(log(squeeze((Flour3Dnoback(i,j,:)))),'r')
title([num2str(i) ' ' num2str(j)])
%axis([0 100 -3 1])
plottick = plottick +1;
end
end
    
%% IF it looks good: Normalizing the initial value of OD (mixed source culture)
for i = 1:dim1
    for j = 1:dim2 
         OD3D(i,j,:) = (OD3D(i,j,:)-delOD(i,j));
         Flour3D(i,j,:) = (Flour3D(i,j,:)- delFlour(i,j));
    end
end
%% Approximate location of linear increase of Fluorescence with OD (exponential phase)
plottick =1;
for i =1:dim1
for  j = 1:dim2
subplot(dim1,dim2,plottick)
 hold off
 scatter(squeeze(OD3D(i,j,:)),squeeze(Flour3D(i,j,:)))
 hold on
 plottick = plottick +1;
end
end

%% Determine Selection Range from OD
range1mat=zeros(dim1,dim2);
range2mat=zeros(dim1,dim2);
for i=1:dim1
    for j=1:dim2
        for k=1:length(OD3D(i,j,:))
            if OD3D(i,j,k) <= 0.19 % Lower for Cerulean fluorescence because dual slope regions. Must be repeated for each region
                range1mat(i,j)=k+1;
            else break
            end
        end
    end
end
for i=1:dim1
    for j=1:dim2
        for k=1:length(OD3D(i,j,:))
            if OD3D(i,j,k) <= 0.2
                range2mat(i,j)=k;
            else break
            end
        end
    end
end
%% Finding Slope of Fluorescence vs OD in the exponential phase of growth
startrange=5;
lint1i=1;                       % Selection region start lower value. Start at 1 unless initial range of OD is below detection limit
lint1f=lint1i+startrange;       % Selection region start upper value.
%xloc=CerLinFit(:,:,4)+CerLinFit(:,:,5)-15;
dlint1=1;
dlint2=1;
LenVar=zeros(round((startrange)/dlint1) +1,round((range2-range1)/dlint2)+1,5);
LinFit=zeros(dim1,dim2,5);
for i = 1:dim1
    for j = 1:dim2
        %For CHERRY or Cer region 2
%         lint1i=xloc(i,j);     %Unblank these two lines when for second region of Cerulean fluoresence xloc(i,j);
%         lint1f=lint1i+startrange;
        for lint1=lint1i:dlint1:lint1f
            range1 = range1mat(i,j)-lint1;
            range2 = range2mat(i,j)-lint1;
            lint2i=range1mat(i,j);
            lint2f=range2mat(i,j);
            for lint2=lint2i:dlint2:lint2f
                x=(squeeze(OD3D(i,j,lint1:lint2)));
                tlength = length(x);
                y= (squeeze(Flour3D(i,j,lint1:lint2)));
                p = polyfit(x,y,1);
                yCalc1 = p(1)*transpose(x) +p(2);
                Rsq1 = 1 - sum((transpose(y) - yCalc1).^2)/sum((y - mean(y)).^2);
                LenVar(round((lint1-lint1i)/dlint1) +1,round((lint2-lint2i)/dlint2)+1,1:5) = [p(1),p(2),Rsq1,lint1,tlength];
                
            end
        end
        clear g
        clear h
        maximum = max(max(LenVar(:,:,3)));
        [g,h]=find(LenVar(:,:,3)==maximum);
        LinFit(i,j,1:5) = LenVar(g,h,1:5);
        LenVar=zeros(round((startrange)/dlint1) +1,round((range2-range1)/dlint2)+1,5);
                
        %% Linear Fit to OD plotted:
        hold off
        xkept=(squeeze(OD3D(i,j,(LinFit(i,j,4):LinFit(i,j,4)+LinFit(i,j,5)-1))));
        ODlength = length(xkept);
        ykept= (squeeze(Flour3D(i,j,(LinFit(i,j,4):LinFit(i,j,4)+LinFit(i,j,5)-1))));
        
        yCalc1kept = LinFit(i,j,1)*transpose(xkept) +LinFit(i,j,2);
        subplot(dim1,dim2,(i-1)*dim2+j)
        subplot(1,1,1)
        hold off
        %plot(xkept,ykept)
        %plot(transpose(X2(:)),squeeze(Yint(i,j,:)))
        %hold on
        scatter(squeeze(OD3D(i,j,:)),squeeze(Flour3D(i,j,:)))
        hold on
        plot(xkept,yCalc1kept,'LineWidth',3)
        xlabel('OD')
        ylabel('Venus Intensity')
        title([num2str(i) ' ' num2str(j)])
        grid on
        pause(0.1)
        
    end
end
%%
Venlinti040721=Venlinti;

%% Finding Cumulative Cerulean

for i=1:dim1
    for j=1:dim2
        for k=1:length(OD3D(i,j,:))
            if OD3D(i,j,k) <= 0.22
                rangebidmat(i,j)=k;
            else break
            end
        end
    end
end

for i=1:8
for j=1:12
[val,idx]=min(abs(squeeze(OD3D(i,j,1:rangebidmat(i,j)))-0.2));
bval(i,j)=val;
bidx(i,j)=idx;
OD3Dbindx(i,j)=OD3D(i,j,bidx(i,j));
end
end

clear areastep1 areastep2 Flourarea Flourareaav;

areastep1=zeros(8,12,max(max(bidx-1)));

for i =1:8
for j=1:12
   areastep1(i,j,1:bidx(i,j)-1)= squeeze(Flour3D(i,j,2:bidx(i,j))-Flour3D(i,j,1:bidx(i,j)-1)); %- Flour3D(i,j,Venlinti(i,j))) %areastep1(i,j,1:bidx(i,j)-Venlinti(i,j)+1)= (Flour3D(i,j,Venlinti(i,j):bidx(i,j)));
    areastep2=max(areastep1,0);
    Flourareaarray(i,j,1:bidx(i,j)-1)=(squeeze(areastep2(i,j,1:bidx(i,j)-1))./(abs(squeeze(OD3D(i,j,2:bidx(i,j)))))); %Flourarea(i,j)=sum(squeeze(areastep2(i,j,1:bidx(i,j)-Venlinti(i,j)+1)).*abs(squeeze(OD3D(i,j,Venlinti(i,j):bidx(i,j))-OD3D(i,j,Venlinti(i,j)-1:bidx(i,j)-1))));
    m=isnan(Flourareaarray);
    n=isinf(Flourareaarray);
    Flourareaarray(m)=0;
    Flourareaarray(n)=0;
    Flourarea(i,j)=sum(Flourareaarray(i,j,:));
    Flourareaav(i,j)=Flourarea(i,j)./(OD3D(i,j,bidx(i,j))-OD3D(i,j,2)); %Flourareaav(i,j)=Flourarea(i,j)./(OD3D(i,j,bidx(i,j))-OD3D(i,j,Venlinti(i,j)));
end
end

%% Venus decay measure
clear val idx bval bidx OD3Dbindx
for i=1:8
for j=1:12
[val,idx]=min(abs(squeeze(OD3D(i,j,:))-0.2));
bval(i,j)=val;
bidx(i,j)=idx;
OD3Dbindx(i,j)=OD3D(i,j,bidx(i,j));
end
end
%% Venus decay measure Continued
startrange=10;
lint1i=Venlinti;
lint1f=lint1i+startrange;
dlint1=1;
dlint2=1;
range1mat=bidx-10;
range2mat=bidx;
LenVar=zeros(round((startrange)/dlint1) +1,round((range2-range1)/dlint2)+1,5);
%LinFit=zeros(dim1,dim2,5);
FlourLinReg = zeros(dim1,dim2,71);
logLinCherry= zeros(dim1,dim2,71);
smoothlogCherry= zeros(dim1,dim2,71);
for i = 1:dim1
    for j = 1:dim2
        for lint1=lint1i(i,j):dlint1:lint1f(i,j)
            range1 = range1mat(i,j)-lint1;
            range2 = range2mat(i,j)-lint1;
            lint2i=range1mat(i,j);
            lint2f=range2mat(i,j);
            for lint2=lint2i:dlint2:lint2f
                x=log(squeeze(OD3D(i,j,lint1:lint2)));
                tlength = length(x);
                y= log(squeeze(Flour3D(i,j,lint1:lint2)./OD3D(i,j,lint1:lint2)));
                p = polyfit(x,y,1);
                yCalc1 = p(1)*transpose(x) +p(2);
                Rsq1 = 1 - sum((transpose(y) - yCalc1).^2)/sum((y - mean(y)).^2);
                LenVar(round((lint1-lint1i(i,j))/dlint1) +1,round((lint2-lint2i)/dlint2)+1,1:5) = [p(1),p(2),Rsq1,lint1,tlength];
                
            end
        end
        clear g
        clear h
        maximum = max(max(LenVar(:,:,3)));
        [g,h]=find(LenVar(:,:,3)==maximum);
        LinFit(i,j,1:5) = LenVar(g,h,1:5);
        LenVar=zeros(round((startrange)/dlint1) +1,round((range2-range1)/dlint2)+1,5);
                
        %% Linear Fit to OD plotted:
        hold off
        xkept=log(squeeze(OD3D(i,j,(LinFit(i,j,4):LinFit(i,j,4)+LinFit(i,j,5)-1))));
        ODlength = length(xkept);
        ykept= log(squeeze(Flour3D(i,j,(LinFit(i,j,4):LinFit(i,j,4)+LinFit(i,j,5)-1))));
        
        yCalc1kept = LinFit(i,j,1)*transpose(xkept) +LinFit(i,j,2);
        subplot(dim1,dim2,(i-1)*dim2+j)
        subplot(1,1,1)
        hold off
        %plot(xkept,ykept)
        %plot(transpose(X2(:)),squeeze(Yint(i,j,:)))
        %hold on
        scatter(log(squeeze(OD3D(i,j,:))),log(squeeze(Flour3D(i,j,:)./OD3D(i,j,:))))
        hold on
        plot(xkept,yCalc1kept,'LineWidth',3)
        xlabel('OD')
        ylabel('Venus Intensity')
        title([num2str(i) ' ' num2str(j)])
        grid on
        pause(0.1)
        
    end
end