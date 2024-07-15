% Read data
data = debutanizer_data(:,1:7);
data_norm = mapminmax(data',0.1,0.9)';

%Training set
data_norm_train = data_norm(1:1501,:);
mean_data_norm_train = mean(data_norm_train);
z_train= Input_of_PE_DAE(data_norm_train,mean_data_norm_train);
x_train_real = outputsetup(data_norm_train(2:1501,:),0.5);

%Testing Set
data_norm_test = data_norm(1501:2394,:); 
Missing_rate = 0.1;
data_norm_test = data_norm(1501:2394,:); 
[x_test,randomIndex_test] = inputsetup_test(data_norm_test,Missing_rate,mean_data_norm_train);
x_test_obj = outputsetup(data_norm(1502:2394,:),0);
%% Setting network structure and hyperparameters
rand('state',0) 
nn = nnsetup([]);
nn.activation_function              = 'sigm';
nn.learningRate                     =  0.5 ;
% nn.dropoutFraction                = 0.5; 
% nn.weightPenaltyL2                =  0.05; 

% Training the network
opts.numepochs =  ;
epochs         = opts.numepochs;
opts.batchsize = ;
[nn,train_err] = nntrain(nn, z_train,x_train_real, opts);
%plot(train_err,'r-');
%% Results
nn = nnff(nn, x_test, x_test_obj);
test_pred = nn.a{};
test_obj = x_test_obj(randomIndex_test);
test_pred = test_pred(randomIndex_test);
l_test=length(test_obj);
rmse = norm(test_obj-test_pred)/sqrt(l_test)
mape=mean(abs((test_obj-test_pred)./test_obj))*100