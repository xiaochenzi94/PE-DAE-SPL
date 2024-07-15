function [data_norm_train_opt,randomIndex_train] = Input_of_PE_DAE(data_norm_train,mean_data_norm_train)
zl=5;
rand('state',0)
[r,c] = size(data_norm_train);
totalNum=r*c;
data_norm_train0 = [data_norm_train,zeros(r,c)];
data_norm_train0 = [data_norm_train0(1:r-1,:),data_norm_train0(2:r,:)];
mean_data_norm_train = repmat(mean_data_norm_train,r,1);

if zl>=1
    data_norm_train1 = data_norm_train;
    randomIndex1 = 1+floor(rand(1,floor(totalNum*0.1))*totalNum);
    data_norm_train10 = data_norm_train1;
    data_norm_train11 = data_norm_train1;
    data_norm_train10(randomIndex1) = 0;
    data_norm_train11(randomIndex1) = 1;
    data_norm_train11 = data_norm_train11 - data_norm_train10;
    data_norm_train10 = mean_train(data_norm_train10,mean_data_norm_train,randomIndex1);
    data_norm_train1 = [data_norm_train10,data_norm_train11];
    data_norm_train1 = [data_norm_train1(1:r-1,:),data_norm_train1(2:r,:)];
else
    data_norm_train1 = [];
end

if zl>=2
    data_norm_train2 = data_norm_train;
    randomIndex2 = 1+floor(rand(1,floor(totalNum*0.2))*totalNum);
    data_norm_train20 = data_norm_train2;
    data_norm_train21 = data_norm_train2;
    data_norm_train20(randomIndex2) = 0;
    data_norm_train21(randomIndex2) = 1;
    data_norm_train21 = data_norm_train21 - data_norm_train20;
    
    data_norm_train20 = mean_train(data_norm_train20,mean_data_norm_train,randomIndex2);
    data_norm_train2 = [data_norm_train20,data_norm_train21];
    data_norm_train2 = [data_norm_train2(1:r-1,:),data_norm_train2(2:r,:)];
else
    data_norm_train2 = [];
end

if zl>=3
    data_norm_train3 = data_norm_train;
    randomIndex3 = 1+floor(rand(1,floor(totalNum*0.3))*totalNum);
    data_norm_train30 = data_norm_train3;
    data_norm_train31 = data_norm_train3;
    data_norm_train30(randomIndex3) = 0;
    data_norm_train31(randomIndex3) = 1;
    data_norm_train31 = data_norm_train31 - data_norm_train30;
    data_norm_train30 = mean_train(data_norm_train30,mean_data_norm_train,randomIndex3);
    data_norm_train3 = [data_norm_train30,data_norm_train31];
    data_norm_train3 = [data_norm_train3(1:r-1,:),data_norm_train3(2:r,:)];
else
    data_norm_train3 = [];
end

if zl>=4
    data_norm_train4 = data_norm_train;
    randomIndex4 = 1+floor(rand(1,floor(totalNum*0.4))*totalNum);
    data_norm_train40 = data_norm_train4;
    data_norm_train41 = data_norm_train4;
    data_norm_train40(randomIndex4) = 0;

    data_norm_train41(randomIndex4) = 1;
    data_norm_train41 = data_norm_train41 - data_norm_train40;
    data_norm_train40 = mean_train(data_norm_train40,mean_data_norm_train,randomIndex4);
    data_norm_train4 = [data_norm_train40,data_norm_train41];
    data_norm_train4 = [data_norm_train4(1:r-1,:),data_norm_train4(2:r,:)];
else
    data_norm_train4 = [];
end
    
if zl>=5
    data_norm_train5 = data_norm_train;
    randomIndex5 = 1+floor(rand(1,floor(totalNum*0.5))*totalNum);
    data_norm_train50 = data_norm_train5;
    data_norm_train51 = data_norm_train5;
    data_norm_train50(randomIndex5) = 0;

    data_norm_train51(randomIndex5) = 1;
    data_norm_train51 = data_norm_train51 - data_norm_train50;
    data_norm_train50 = mean_train(data_norm_train50,mean_data_norm_train,randomIndex5);
    data_norm_train5 = [data_norm_train50,data_norm_train51];
    data_norm_train5 = [data_norm_train5(1:r-1,:),data_norm_train5(2:r,:)];
else
    data_norm_train5 = [];
end

if zl>=6
    data_norm_train6 = data_norm_train;
    randomIndex6 = 1+floor(rand(1,floor(totalNum*0.6))*totalNum);
    data_norm_train60 = data_norm_train6;
    data_norm_train61 = data_norm_train6;
    data_norm_train60(randomIndex6) = 0;

    data_norm_train61(randomIndex6) = 1;
    data_norm_train61 = data_norm_train61 - data_norm_train60;
    data_norm_train60 = mean_train(data_norm_train60,mean_data_norm_train,randomIndex6);
    data_norm_train6 = [data_norm_train60,data_norm_train61];
    data_norm_train6 = [data_norm_train6(1:r-1,:),data_norm_train6(2:r,:)];
else
    data_norm_train6 = [];
end
data_norm_train_opt = [data_norm_train0;data_norm_train1;data_norm_train2;data_norm_train3;data_norm_train4;data_norm_train5;data_norm_train6];
