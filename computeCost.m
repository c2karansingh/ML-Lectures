







function J = computeCost(X, y, theta)
J = 0;

m=size(y,1);
#disp(m);
prediction = X*theta;
errorSquared = (prediction-y).^2;
#disp(errorSquared);
J= sum(errorSquared)/(2*m);




end










