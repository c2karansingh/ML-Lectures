data=load('approxLinearData.txt');



y=data(:,2);
x=data(:,1);
m=size(y);

plotData(x,y);

x=[ones(m,1) x];
theta=[0;0];

cost=computeCost(x,y,theta);
disp(cost);



theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);


J_vals = zeros(length(theta0_vals), length(theta1_vals));

#Computing cost for diff values of theta
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
	  J_vals(i,j) = computeCost(x, y, t);
    end
end


J_vals = J_vals';

figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');







