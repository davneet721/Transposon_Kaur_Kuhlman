%% Sample Dataset or Initial Conditions
nn=10000;               % Time grain
F=linspace(0,4,nn);     % Time space, evolved from generation 0 to 4
Chom=0.035;             % Homing coefficient
p=F(2);                 % Time Interval
Tscar=[];               % Number of Transposons
Xscar=[];               % Number of Plasmids with Transposons
PXscar=[];              % Number of Plasmid Excision Events
Yscar=[];               % Number of Plasmids without Tranposons
expressscar=[];         % Transposase Concentration, (expression, t) * (transposon number, T)
a=0.46;                 % Max possible insertion rate without TnpB. Experimentally, no replication is observed

%% Transposon Dynamics Simulation
for t= 0:0.01:1         % Induction level, induced excission rate per transposon
for tnpB=0:0.01:1       % Concentration of TnpB
%for a =0:0.01:1        % Induced insertion rate per transposon
    
    X=zeros(1,nn);      % Start of initial conditions at time zero
    dX=zeros(1,nn);
    PX=zeros(1,nn);
    dPX=zeros(1,nn);
    Ch=zeros(1,nn);     % Initial Conditions same for all values of excision rate and TnpB concentration
    dCh=zeros(1,nn);
    T=zeros(1,nn);
    dT=zeros(1,nn);  
    X(1)=12;
    T(1)= 12;
    Ch(1)=0;                    % End of initial conditions at time zero
    
    for i=2:nn                  % Time evolution begins. Time step i with time interval p
        if t*T(i-1) <=12
            td=T(i-1)*t/12;     % Effective Excision Rate
        elseif t*T(i-1)>12
            td=1;
        end
    Homing=Chom*tnpB;                   % RNA concentration, X(i-1) for plasmid and td*Ch(i-1)*p for chromosomal targets
    dX(i)=-td*p*X(i-1)/2 + p*Homing*(12+((td/2)-1)*X(i-1));
    X(i)= X(i-1) + dX(i);
    dPX(i)=td*p*X(i-1);                 % Excision events, for comparison with Cumulative Cerulean Fluorescence
    if a*T(i-1) <=12
            ad= a*(1+tnpB)*T(i-1)/12;   % Effective Insertion Rate
        elseif a*T(i-1)>12
            ad= (1+tnpB);
    end
     %*
    if Ch(i) <0
        Ch(1)=0;
     end
    if X(i) <0
        X(i)=0;
    end
    if isnan(X(i)) == 1
        X(i)=0;
    end
    if isnan(dPX(i)) == 1
        dPX(i)=0;
    end
    PX(i)= PX(i-1) + dPX(i);
    dCh(i)=   p*ad*td*X(i-1)/2  - p*td*(1-ad)*Ch(i-1)/2 + Homing*p*td*Ch(i-1)/2;
    dT(i)= dX(i) + dCh(i);
    
    if isnan(dT(i)) == 1
        dT(i)=0;
    end
    Ch(i)= Ch(i-1) + dCh(i);
    T(i)= T(i-1)+dT(i);
    end

Tscarwins(round(t/0.01)+1,round(tnpB/0.01)+1)=T(nn);
Chscarwins(round(t/0.01)+1,round(tnpB/0.01)+1)=Ch(nn);
expressscarwins(round(t/0.01)+1,round(tnpB/0.01)+1)=t.*T(nn)./12;
Xscarwins(round(t/0.01)+1,round(tnpB/0.01)+1)=X(nn);
PXscarwins(round(t/0.01)+1,round(tnpB/0.01)+1)=PX(nn);
Yscarwins(round(t/0.01)+1,round(tnpB/0.01)+1)=(12-X(nn));
end
end
%% Plotting
subplot(2,2,1)
hold off
imagesc(0:0.01:1,0:0.01:1,(Tscarwins(:,:)))
ylabel('Induced Excision rate per TE / ATc Concentration')
xlabel('TnpB concentration')
title(['Total Transposon Number'])
colorbar
%caxis([0 12]);
subplot(2,2,2)
hold off
imagesc(0:0.01:1,0:0.01:1,(expressscarwins(:,:))) %/max(max(expressscar))
ylabel('Induced Excision rate per TE / ATc Concentration')
xlabel('TnpB concentration')
title(['Venus Level'])
colorbar
%caxis([0 12]);
subplot(2,2,3)
hold off
imagesc(0:0.01:1,0:0.01:1,(PXscarwins(:,:)))
ylabel('Induced Excision rate per TE / ATc Concentration')
xlabel('TnpB concentration')
title(['Excision Events Number'])
colorbar
%caxis([0 18]);
subplot(2,2,4)
imagesc(0:0.01:1,0:0.01:1,(Yscarwins(:,:)))
ylabel('Induced Excision rate per TE / ATc Concentration')
xlabel('TnpB concentration')
title(['Excised Plasmids'])
colorbar
%caxis([0 18]);