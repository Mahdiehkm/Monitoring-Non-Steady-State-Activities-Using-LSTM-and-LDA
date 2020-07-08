
%%%%%%%%%%%%%% Copy/paste the results of 2nd section of the code
%%%%%%%%%%%%%% (conmatLWe) as the 6th row of conmat (fisrt section)
%%%%%%%%%%%%%% 
%%%%% Confusion matrix RA, PD1

conmat=0;

for i=1:10
    for j=1:length(Pred_PD1(i).RA)
predicted(j)=Pred_PD1(i).RA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD1(i).RA));
known=1*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order1] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%% PD2

for i=1:10
    for j=1:length(Pred_PD2(i).RA)
predicted(j)=Pred_PD2(i).RA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD2(i).RA));
known=1*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order2] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%% PD3

for i=1:10
    for j=1:length(Pred_PD3(i).RA)
predicted(j)=Pred_PD3(i).RA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD3(i).RA));
known=1*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order3] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%% PD6



for i=1:10
    for j=1:length(Pred_PD6(i).RA)
predicted(j)=Pred_PD6(i).RA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD6(i).RA));
known=1*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order6] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%%%%%% PD7


for i=1:10
    for j=1:length(Pred_PD7(i).RA)
predicted(j)=Pred_PD7(i).RA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD7(i).RA));
known=1*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order7] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RD

for i=1:10
    for j=1:length(Pred_PD1(i).RD)
predicted(j)=Pred_PD1(i).RD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD1(i).RD));
known=2*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order1] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%% PD2

for i=1:10
    for j=1:length(Pred_PD2(i).RD)
predicted(j)=Pred_PD2(i).RD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD2(i).RD));
known=2*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order2] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%% PD3

for i=1:10
    for j=1:length(Pred_PD3(i).RD)
predicted(j)=Pred_PD3(i).RD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD3(i).RD));
known=2*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order3] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%% PD6



for i=1:10
    for j=1:length(Pred_PD6(i).RD)
predicted(j)=Pred_PD6(i).RD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD6(i).RD));
known=2*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order6] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%%%%%%PD7


for i=1:10
    for j=1:length(Pred_PD7(i).RD)
predicted(j)=Pred_PD7(i).RD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD7(i).RD));
known=2*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order7] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SA

%%%%%%%%% PD1
for i=1:10
    for j=1:length(Pred_PD1(i).SA)
predicted(j)=Pred_PD1(i).SA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD1(i).SA));
known=3*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order1] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%% PD2

for i=1:10
    for j=1:length(Pred_PD2(i).SA)
predicted(j)=Pred_PD2(i).SA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD2(i).SA));
known=3*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order2] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%% PD3


for i=1:10
    for j=1:length(Pred_PD3(i).SA)
predicted(j)=Pred_PD3(i).SA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD3(i).SA));
known=3*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order3] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%% PD6

for i=1:10
    for j=1:length(Pred_PD6(i).SA)
predicted(j)=Pred_PD6(i).SA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD6(i).SA));
known=3*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order6] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%%%%%% PD7

for i=1:10
    for j=1:length(Pred_PD7(i).SA)
predicted(j)=Pred_PD7(i).SA(j);

    end;
    
predictedf=predicted(1:length(Pred_PD7(i).SA));
known=3*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order7] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%%%%%%%%%% SD

%%%%PD1 
for i=1:10
    for j=1:length(Pred_PD1(i).SD)
predicted(j)=Pred_PD1(i).SD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD1(i).SD));
known=4*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order1] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%% PD2


for i=1:10
    for j=1:length(Pred_PD2(i).SD)
predicted(j)=Pred_PD2(i).SD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD2(i).SD));
known=4*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order2] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%% PD3

for i=1:10
    for j=1:length(Pred_PD3(i).SD)
predicted(j)=Pred_PD3(i).SD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD3(i).SD));
known=4*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order3] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%% PD6


for i=1:10
    for j=1:length(Pred_PD6(i).SD)
predicted(j)=Pred_PD6(i).SD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD6(i).SD));
known=4*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order6] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%%%%%% PD7


for i=1:10
    for j=1:length(Pred_PD7(i).SD)
predicted(j)=Pred_PD7(i).SD(j);

    end;
    
predictedf=predicted(1:length(Pred_PD7(i).SD));
known=4*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order7] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LWb

for i=1:20
    for j=1:length(Pred_PD1(i).LWb)
predicted(j)=Pred_PD1(i).LWb(j);

    end;
    
predictedf=predicted(1:length(Pred_PD1(i).LWb));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order1] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%% PD2

for i=1:20
    for j=1:length(Pred_PD2(i).LWb)
predicted(j)=Pred_PD2(i).LWb(j);

    end;
    
predictedf=predicted(1:length(Pred_PD2(i).LWb));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order2] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%%%%%% PD3

for i=1:20
    for j=1:length(Pred_PD3(i).LWb)
predicted(j)=Pred_PD3(i).LWb(j);

    end;
    
predictedf=predicted(1:length(Pred_PD3(i).LWb));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order3] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%%%%%%%%%%%% PD6


for i=1:20
    for j=1:length(Pred_PD6(i).LWb)
predicted(j)=Pred_PD6(i).LWb(j);

    end;
    
predictedf=predicted(1:length(Pred_PD6(i).LWb));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order6] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;


%%%%%%%%%%%% PD7

for i=1:20
    for j=1:length(Pred_PD7(i).LWb)
predicted(j)=Pred_PD7(i).LWb(j);

    end;
    
predictedf=predicted(1:length(Pred_PD7(i).LWb));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order7] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmat=result1+conmat;

end;

%%

%%%%%%%%%%%%%%%%%%%%%%%%% LWe

conmatLWe=0;


for i=1:20
    for j=1:length(Pred_PD1(i).LW)
predicted(j)=Pred_PD1(i).LW(j);

    end;
    
predictedf=predicted(1:length(Pred_PD1(i).LW));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order1] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmatLWe=result1+conmatLWe;

end;


%%%%%%%% PD2


for i=1:20
    for j=1:length(Pred_PD2(i).LW)
predicted(j)=Pred_PD2(i).LW(j);

    end;
    
predictedf=predicted(1:length(Pred_PD2(i).LW));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order2] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmatLWe=result1+conmatLWe;

end;

%%%%%%%%%%%%%%%%% PD3

for i=1:20
    for j=1:length(Pred_PD3(i).LW)
predicted(j)=Pred_PD3(i).LW(j);

    end;
    
predictedf=predicted(1:length(Pred_PD3(i).LW));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order3] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmatLWe=result1+conmatLWe;

end;

%%%%%%%%%%%%% PD6


for i=1:20
    for j=1:length(Pred_PD6(i).LW)
predicted(j)=Pred_PD6(i).LW(j);

    end;
    
predictedf=predicted(1:length(Pred_PD6(i).LW));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order6] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmatLWe=result1+conmatLWe;

end;


%%%%%%%%%%%% PD7

for i=1:20
    for j=1:length(Pred_PD7(i).LW)
predicted(j)=Pred_PD7(i).LW(j);

    end;
    
predictedf=predicted(1:length(Pred_PD7(i).LW));
known=5*ones(1,length(predictedf));
data=grp2idx(predictedf);
[result1,order7] = confusionmat(known,data,'order',[1 2 3 4 5]);


conmatLWe=result1+conmatLWe;

end;


