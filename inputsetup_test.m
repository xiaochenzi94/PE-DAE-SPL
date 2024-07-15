function [data_norm_train_opt, randomIndex]= inputsetup_test(data_norm_train,zl,mean_data_norm_train)
zl=fix(zl*10);
rand('state',0)
data_norm_train0 = data_norm_train;
data_norm_train0(1,:) = [];
[r,c] = size(data_norm_train0);
totalNum=r*c;
mean_data_norm_train = repmat(mean_data_norm_train,r,1);
if zl==1
    data_norm_train1 = data_norm_train0;
    randomIndex1 = 1+floor(rand(1,floor(totalNum*0.1))*totalNum);
    data_norm_train10 = data_norm_train1;
    data_norm_train11 = data_norm_train1;
    data_norm_train10(randomIndex1) = 0;
    data_norm_train11(randomIndex1) = 1;
    data_norm_train11 = data_norm_train11 - data_norm_train10;
    data_norm_train10 = mean_train(data_norm_train10,mean_data_norm_train,randomIndex1);
    data_norm_train1 = [data_norm_train10,data_norm_train11];
    
    A = [data_norm_train(1,:),zeros(1,c)];
    data_norm_train1 = [A;data_norm_train1];
    data_norm_train1 = [data_norm_train1(1:r,:),data_norm_train1(2:r+1,:)];
    
    data_norm_train_opt = data_norm_train1;
    randomIndex = randomIndex1;
end

if zl==2
    data_norm_train2 = data_norm_train0;
    randomIndex2 = 1+floor(rand(1,floor(totalNum*0.2))*totalNum);
    data_norm_train20 = data_norm_train2;
    data_norm_train21 = data_norm_train2;
    data_norm_train20(randomIndex2) = 0;
    data_norm_train21(randomIndex2) = 1;
    data_norm_train21 = data_norm_train21 - data_norm_train20;
    data_norm_train20 = mean_train(data_norm_train20,mean_data_norm_train,randomIndex2);
    data_norm_train2 = [data_norm_train20,data_norm_train21];
    
    A = [data_norm_train(1,:),zeros(1,c)];
    data_norm_train2 = [A;data_norm_train2];
    data_norm_train2 = [data_norm_train2(1:r,:),data_norm_train2(2:r+1,:)];
    
    data_norm_train_opt = data_norm_train2;
    randomIndex = randomIndex2;
end

if zl==3
    data_norm_train3 = data_norm_train0;
    randomIndex3 = 1+floor(rand(1,floor(totalNum*0.3))*totalNum);
    data_norm_train30 = data_norm_train3;
    data_norm_train31 = data_norm_train3;
    data_norm_train30(randomIndex3) = 0;
    data_norm_train31(randomIndex3) = 1;
    data_norm_train31 = data_norm_train31 - data_norm_train30;
    data_norm_train30 = mean_train(data_norm_train30,mean_data_norm_train,randomIndex3);
    data_norm_train3 = [data_norm_train30,data_norm_train31];
    
    A = [data_norm_train(1,:),zeros(1,c)];
    data_norm_train3 = [A;data_norm_train3];
    data_norm_train3 = [data_norm_train3(1:r,:),data_norm_train3(2:r+1,:)];
    
    data_norm_train_opt = data_norm_train3;
    randomIndex = randomIndex3;
end

if zl==4
    data_norm_train4 = data_norm_train0;
    randomIndex4 = 1+floor(rand(1,floor(totalNum*0.5))*totalNum);
    data_norm_train40 = data_norm_train4;
    data_norm_train41 = data_norm_train4;
    data_norm_train40(randomIndex4) = 0;
    data_norm_train41(randomIndex4) = 1;
    data_norm_train41 = data_norm_train41 - data_norm_train40;
    data_norm_train40 = mean_train(data_norm_train40,mean_data_norm_train,randomIndex4);
    data_norm_train4 = [data_norm_train40,data_norm_train41];
    
    A = [data_norm_train(1,:),zeros(1,c)];
    data_norm_train4 = [A;data_norm_train4];
    data_norm_train4 = [data_norm_train4(1:r,:),data_norm_train4(2:r+1,:)];
    
    data_norm_train_opt = data_norm_train4;
    randomIndex = randomIndex4;
end
%随机将50%的数据置零
if zl==5
    data_norm_train8 = data_norm_train0;
    randomIndex8 = 1+floor(rand(1,floor(totalNum*0.7))*totalNum);
    data_norm_train80 = data_norm_train8;
    data_norm_train81 = data_norm_train8;
    data_norm_train80(randomIndex8) = 0;
    data_norm_train81(randomIndex8) = 1;
    data_norm_train81 = data_norm_train81 - data_norm_train80;
    data_norm_train80 = mean_train(data_norm_train80,mean_data_norm_train,randomIndex8);
    data_norm_train8 = [data_norm_train80,data_norm_train81];
    
    A = [data_norm_train(1,:),zeros(1,c)];
    data_norm_train8 = [A;data_norm_train8];
    data_norm_train8 = [data_norm_train8(1:r,:),data_norm_train8(2:r+1,:)];
    
    data_norm_train_opt = data_norm_train8;
    randomIndex = randomIndex8;
end
% 
% %前后合并
% d = size(data_norm_train_opt,1);
% data_norm_train_opt = [data_norm_train_opt(1:d-1,:),data_norm_train_opt(2:d,:)];
%保存
% save('C:\Users\dell\Desktop\ouchen\missing data\data\data_norm_train','data_norm_train');