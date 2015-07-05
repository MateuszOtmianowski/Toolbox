# Toolbox

#splitting data into test and train sample with defined splitting ratio
sample_splitting=function(seed,data_frame,dep_variable,split_ratio){
        library(caTools)
        set.seed(seed)
        split=sample.split(dep_variable, SplitRatio=split_ratio)
        train<<-subset(data_frame,split==TRUE)
        test<<-subset(data_frame,split==FALSE)
}

auc=function(predictions, tested_outcomes){
        library(ROCR)
        ROCRpred=prediction(predictions, tested_outcomes)
        as.numeric(performance(ROCRpred, "auc")@y.values)
        
}
