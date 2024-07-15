function data_norm_train_opt = outputsetup(data_norm_train,zl)
if zl>=0.1
    data_norm_train_opt = repmat(data_norm_train,zl*10+1,1);
else
    data_norm_train_opt = data_norm_train;
end