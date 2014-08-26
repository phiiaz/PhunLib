function outlier = detectOutliers(X,outlierProp)
    if ~exist('outlierProp','var')
        outlierProp = 0.02;
    end
    mu = mean(X);
    sigma = std(X); 
    prop = mvnpdf(X,mu,sigma);
    outlier = prop <= outlierProp;
end