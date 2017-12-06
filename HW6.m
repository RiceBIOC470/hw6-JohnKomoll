%HW6
%GB comments
1a 100
1b 100
1c 100
1d 100
1e 100
2a 100
2b 100
2c 100
Overall: 100

% Problem 1. Curve fitting. 
% Part 1. Take 10 x values on the interval 0 < x <= 10 and then create y
% values from the x values by plugging the x values into a third order
% polynomial of your choice. Add random noise to the data by choosing a random number
% in the interval [-D, D]. Start with D = 1. Plot your data in the x-y plane.
% Part 2. Fit your data with polynomials from order 1 to 9. Plot the fitted
% polynomials together with the data. 
% Part 3. On a separate plot, plot the R^2 and adjusted R^2 as a function
% of the order of the polynomial. 
% Part 4. Repeat parts 1 - 3 for D = 10 and D = 1000. Comment on the
% results. 
% Part 5. Now repeat parts 1-3 but take 100 x values on the interval 0 < x <=
% 10. Comment on the results. 

% Part 1 - y = 2x^3 - 12x^2 + 9x - 5
xdat = sort(rand(1, 10) .* 10);
coeffs = [2, -12, 9, -5];
ydat = polyval(coeffs, xdat);

% Add noise
D = 1;
ydat = ydat + 2 * D * (rand(1,10) - 0.5);

% Plot data in x-y plane
plot(xdat, ydat, 'r.', 'MarkerSize', 20)

% Part 2
% Get fits
[fit1, gof1] = fit(xdat', ydat', 'poly1');
[fit2, gof2] = fit(xdat', ydat', 'poly2');
[fit3, gof3] = fit(xdat', ydat', 'poly3');
[fit4, gof4] = fit(xdat', ydat', 'poly4');
[fit5, gof5] = fit(xdat', ydat', 'poly5');
[fit6, gof6] = fit(xdat', ydat', 'poly6');
[fit7, gof7] = fit(xdat', ydat', 'poly7');
[fit8, gof8] = fit(xdat', ydat', 'poly8');
[fit9, gof9] = fit(xdat', ydat', 'poly9');
hold on
% Plot fits
plot(fit1, xdat, ydat)
plot(fit2, xdat, ydat)
plot(fit3, xdat, ydat)
plot(fit4, xdat, ydat)
plot(fit5, xdat, ydat)
plot(fit6, xdat, ydat)
plot(fit7, xdat, ydat)
plot(fit8, xdat, ydat)
plot(fit9, xdat, ydat)
axis([1 10 -200 1000])
legend('off')
title('Polynomial Fits of Data with Noise: D = 1')

% Part 3
figure
gofs = [gof1 gof2 gof3 gof4 gof5 gof6 gof7 gof8 gof9];
rsqs = zeros(1,9);
rsqas = zeros(1,9);
% Grab all R^2 values
for fitn = 1:9
    
    rsqs(fitn) = gofs(fitn).rsquare;
    rsqas(fitn) = gofs(fitn).adjrsquare;
    
end
% Plot R^2 values
plot(1:9, rsqs,'b-')
hold on
plot(1:9, rsqas,'k.-')
axis([1 9 -2 2])
legend('R^2', 'Adjusted R^2', 'Location', 'Best')
ylabel('R^2 Values')
xlabel('Order of Approximating Polynomial')
title('R^2 Values with Varying Polynomial Fit Orders: D = 1')

% Part 4
% D = 10
% Produce data
xdat = sort(rand(1, 10) .* 10);
D = 10;
ydat = polyval(coeffs, xdat);
ydat = ydat + 2 * D * (rand(1,10) - 0.5);
figure
% Fit the data
plot(xdat, ydat, 'r.', 'MarkerSize', 20)
[fit1, gof1] = fit(xdat', ydat', 'poly1');
[fit2, gof2] = fit(xdat', ydat', 'poly2');
[fit3, gof3] = fit(xdat', ydat', 'poly3');
[fit4, gof4] = fit(xdat', ydat', 'poly4');
[fit5, gof5] = fit(xdat', ydat', 'poly5');
[fit6, gof6] = fit(xdat', ydat', 'poly6');
[fit7, gof7] = fit(xdat', ydat', 'poly7');
[fit8, gof8] = fit(xdat', ydat', 'poly8');
[fit9, gof9] = fit(xdat', ydat', 'poly9');
hold on
% Plot the fits with the raw data
plot(fit1, xdat, ydat)
plot(fit2, xdat, ydat)
plot(fit3, xdat, ydat)
plot(fit4, xdat, ydat)
plot(fit5, xdat, ydat)
plot(fit6, xdat, ydat)
plot(fit7, xdat, ydat)
plot(fit8, xdat, ydat)
plot(fit9, xdat, ydat)
axis([1 10 -200 1000])
legend('off')
title('Polynomial Fits of Data with Noise: D = 10')

figure
gofs = [gof1 gof2 gof3 gof4 gof5 gof6 gof7 gof8 gof9];
rsqs = zeros(1,9);
rsqas = zeros(1,9);
% Gather R^2 values
for fitn = 1:9
    
    rsqs(fitn) = gofs(fitn).rsquare;
    rsqas(fitn) = gofs(fitn).adjrsquare;
    
end
% Plot R^2 values
plot(1:9, rsqs,'b-')
hold on
plot(1:9, rsqas,'k.-')
axis([1 9 -2 2])
legend('R^2', 'Adjusted R^2', 'Location', 'Best')
ylabel('R^2 Values')
xlabel('Order of Approximating Polynomial')
title('R^2 Values with Varying Polynomial Fit Orders: D = 10')

% D = 1000
% Generate appropriate data
xdat = sort(rand(1, 10) .* 10);
D = 1000;
ydat = polyval(coeffs, xdat);
ydat = ydat + 2 * D * (rand(1,10) - 0.5);
figure
plot(xdat, ydat, 'r.', 'MarkerSize', 20)
% Fit the data with polynomials
[fit1, gof1] = fit(xdat', ydat', 'poly1');
[fit2, gof2] = fit(xdat', ydat', 'poly2');
[fit3, gof3] = fit(xdat', ydat', 'poly3');
[fit4, gof4] = fit(xdat', ydat', 'poly4');
[fit5, gof5] = fit(xdat', ydat', 'poly5');
[fit6, gof6] = fit(xdat', ydat', 'poly6');
[fit7, gof7] = fit(xdat', ydat', 'poly7');
[fit8, gof8] = fit(xdat', ydat', 'poly8');
[fit9, gof9] = fit(xdat', ydat', 'poly9');
hold on
% Plot the fits along with the raw data
plot(fit1, xdat, ydat)
plot(fit2, xdat, ydat)
plot(fit3, xdat, ydat)
plot(fit4, xdat, ydat)
plot(fit5, xdat, ydat)
plot(fit6, xdat, ydat)
plot(fit7, xdat, ydat)
plot(fit8, xdat, ydat)
plot(fit9, xdat, ydat)
axis([1 10 -200 1000])
legend('off')
title('Polynomial Fits of Data with Noise: D = 1000')

figure
gofs = [gof1 gof2 gof3 gof4 gof5 gof6 gof7 gof8 gof9];
rsqs = zeros(1,9);
rsqas = zeros(1,9);
% Gather R^2 values
for fitn = 1:9
    
    rsqs(fitn) = gofs(fitn).rsquare;
    rsqas(fitn) = gofs(fitn).adjrsquare;
    
end
% Plot R^2 values
plot(1:9, rsqs,'b-')
hold on
plot(1:9, rsqas,'k.-')
axis([1 9 -2 2])
legend('R^2', 'Adjusted R^2', 'Location', 'Best')
ylabel('R^2 Values')
xlabel('Order of Approximating Polynomial')
title('R^2 Values with Varying Polynomial Fit Orders: D = 1000')


% Part 5
% Generate appropriate data
xdat = sort(rand(1, 100) .* 10);
coeffs = [2, -12, 9, -5];
ydat = polyval(coeffs, xdat);
D = 1;
ydat = ydat + 2 * D * (rand(1,100) - 0.5);
figure
plot(xdat, ydat, 'r.', 'MarkerSize', 20)
% Fit data to polynomials
[fit1, gof1] = fit(xdat', ydat', 'poly1');
[fit2, gof2] = fit(xdat', ydat', 'poly2');
[fit3, gof3] = fit(xdat', ydat', 'poly3');
[fit4, gof4] = fit(xdat', ydat', 'poly4');
[fit5, gof5] = fit(xdat', ydat', 'poly5');
[fit6, gof6] = fit(xdat', ydat', 'poly6');
[fit7, gof7] = fit(xdat', ydat', 'poly7');
[fit8, gof8] = fit(xdat', ydat', 'poly8');
[fit9, gof9] = fit(xdat', ydat', 'poly9');
hold on
% Plot polynomial fits along with raw data
plot(fit1, xdat, ydat)
plot(fit2, xdat, ydat)
plot(fit3, xdat, ydat)
plot(fit4, xdat, ydat)
plot(fit5, xdat, ydat)
plot(fit6, xdat, ydat)
plot(fit7, xdat, ydat)
plot(fit8, xdat, ydat)
plot(fit9, xdat, ydat)
axis([1 10 -200 1000])
legend('off')
title('Polynomial Fits With 100 Data Points')

figure
gofs = [gof1 gof2 gof3 gof4 gof5 gof6 gof7 gof8 gof9];
rsqs = zeros(1,9);
rsqas = zeros(1,9);
% Gather appropriate R^2 values
for fitn = 1:9
    
    rsqs(fitn) = gofs(fitn).rsquare;
    rsqas(fitn) = gofs(fitn).adjrsquare;
    
end
% Plot R^2 values
plot(1:9, rsqs,'b-')
hold on
plot(1:9, rsqas,'k.-')
axis([1 9 -2 2])
legend('R^2', 'Adjusted R^2', 'Location', 'Best')
ylabel('R^2 Values')
xlabel('Order of Approximating Polynomial')
title('R^2 Values with Varying Polynomial Fit Orders: 100 Data Points')

% Polynomial fits of order 3 generally have a sufficiently high R^2 value
% and match the data well. This is expected, because the original modeled
% polynomial is a third order polynomial with added noise. Additional 
% augmentation of the polynomial order overfits the data and does not provide
% an appreciably better R^2 or adjusted R^2 value. When more noise is added
% by increasing D, the adjusted R^2 orders begin to decrease at higher
% orders. This is expected, because the polynomial fits of high order are
% over-fitting the data, and the rest of the polynomial line does not make
% sense with respect to the plotted points. When the noise becomes very
% large (D = 1000), polynomial fits can no longer fit the data well, and
% adjusted R^2 values suffer as a result. The fits are more noise than
% fitting.
% When the number of x-values is increased to 100, there are more data
% points for the polynomials to fit. All orders of approximating
% polynomials fit the data well on the given interval, because there is not
% much space between the data points for the polynomials to go astray. The
% coefficients of higher order terms are close to zero, indicating that a
% polynomial fit of greater than 3 is still unnecessary. However, adjusted
% R^2 values are now consistently large, even for higher order
% approximations.


% Problem 2. Basic statistics. 
% Part 1. Consider two different distributions - Gaussian numbers with a mean of
% 0 and variance 1 and Gaussian numbers with a mean of 1 and variance 1.
% (1) Make a plot of the average p-value for the t-test comparing N random
% numbers chosen from each of these two distributions as a function of N.
% Part 2. Now keep the first distribution the same, but vary the mean of
% the second distribution between 0 and 10 with the same variance and
% repeat part one. Make a plot of all of these different curves on the same
% set of axes. What is special about the case where the mean of the second
% distribution is 0? 
% Part 3. Now keep the means of the two distributions at 0 and 1 as in part
% 1, but vary the variance of both distributions simultaneiously between 0.1 and 10 and plot the 
% p-values vs the number of numbers drawn as before. Comment on your results.  

% Part 1
% Initialize vectors
N = 10:100;
p_aves = zeros(size(N));
counter = 0;
% Iterate through each number of random numbers, N
for i = N
    counter = counter + 1;
    
    p_vals = zeros(1,100);
    
    % Take 100 values of p-values to calculate average
    for iter = 1:100
        
        % Generate distributions
        dist1 = randn(1, i);
        dist2 = randn(1, i) + 1;
        
        % Get p-value from t-test and save it
        [~, p] = ttest2(dist1, dist2);
        p_vals(iter) = p;
        
    end
    
    % Average the 100 p-values for this N, save
    p_aves(counter) = mean(p_vals);
    
end

% Plot average p-values against number of random numbers N
figure
plot(N, p_aves)
xlabel('N')
ylabel('Average p-values')
title('P-Values for Distributions of Means 0,1')

% p-values decrease to 0 as the number of random numbers compared, N,
% increases. This is because these two distributions are indeed different
% distributions with different means, and more data points allow the t-test
% to more definitively distinguish them as different distributions.

% Part 2
% Initialize vectors
N = 10:100;
[~, cols] = size(N);
p_aves = zeros(11, cols);
counter = 0;
% Iterate through each number of random numbers, N
for i = N
    counter = counter + 1;
    
    p_vals = zeros(11,100);
    
    % Take 100 values of p-values to calculate average
    for iter = 1:100
        
        % Generate distributions
        dist1 = randn(1, i);
        dist2 = randn(1, i);
        dist3 = randn(1, i) + 1;
        dist4 = randn(1, i) + 2;
        dist5 = randn(1, i) + 3;
        dist6 = randn(1, i) + 4;
        dist7 = randn(1, i) + 5;
        dist8 = randn(1, i) + 6;
        dist9 = randn(1, i) + 7;
        dist10 = randn(1, i) + 8;
        dist11 = randn(1, i) + 9;
        dist12 = randn(1, i) + 10;
        
        % Get p-values from each t-test and save it
        [~, p1] = ttest2(dist1, dist2);
        [~, p2] = ttest2(dist1, dist3);
        [~, p3] = ttest2(dist1, dist4);
        [~, p4] = ttest2(dist1, dist5);
        [~, p5] = ttest2(dist1, dist6);
        [~, p6] = ttest2(dist1, dist7);
        [~, p7] = ttest2(dist1, dist8);
        [~, p8] = ttest2(dist1, dist9);
        [~, p9] = ttest2(dist1, dist10);
        [~, p10] = ttest2(dist1, dist11);
        [~, p11] = ttest2(dist1, dist12);
        p_vals(1, iter) = p1;
        p_vals(2, iter) = p2;
        p_vals(3, iter) = p3;
        p_vals(4, iter) = p4;
        p_vals(5, iter) = p5;
        p_vals(6, iter) = p6;
        p_vals(7, iter) = p7;
        p_vals(8, iter) = p8;
        p_vals(9, iter) = p9;
        p_vals(10, iter) = p10;
        p_vals(11, iter) = p11;
        
    end
    
    % Average the 100 p-values for each of 10 distribution comparisons for 
    % this N, save
    p_aves(:, counter) = mean(p_vals, 2);
    
end

% Plot all p-value curves
figure
plot(N, p_aves(1,:))
hold on
for i = 2:11
    
    plot(N, p_aves(i,:))
    
end
legend('Mean_2 = 0','Mean_2 = 1','Mean_2 = 2','Mean_2 = 3','Mean_2 = 4','Mean_2 = 5','Mean_2 = 6','Mean_2 = 7','Mean_2 = 8','Mean_2 = 9', 'Mean_2 = 10','Location','SouthEast')
xlabel('N')
ylabel('Average p-values')
title('P-Values for Distributions of Varying Means')


% The p-values of all distributions approach 0 as the number of random
% numbers increases to 100 for the same reason described in part 1, with
% the exception of the case where the mean of the second distribution is 0.
% This is because when the second mean is 0, the two distributions being
% compared do in fact have the same mean: 0. Since they are pulling from
% the same distribution, they should not have an ideal p-value of 0.
% Instead, the null hypothesis that they are different should be rejected
% ideally, so the p-values should stay closer to 1.

% Part 3
% Initialize vectors
N = 10:100;
[~, cols] = size(N);
p_aves = zeros(9, cols);
var_counter = 0;
iter_values = [0.1 0.2 0.5 0.8 1 2 5 8 10];
% Iterate through each number of random numbers, N
for var = iter_values
    var_counter = var_counter + 1;
    counter = 0;
    for i = N
        counter = counter + 1;
        
        p_vals = zeros(1,100);
        
        % Take 100 values of p-values to calculate average
        for iter = 1:100
            
            % Generate distributions
            dist1 = randn(1, i)*var;
            dist2 = randn(1, i)*var + 1;
            
            % Get p-value from t-test and save it
            [~, p] = ttest2(dist1, dist2);
            p_vals(iter) = p;
            
        end
        
        % Average the 100 p-values for this N, save
        p_aves(var_counter, counter) = mean(p_vals);
        
    end
end

% Plot p-value curves
figure
plot(N, p_aves(1,:), 'k');
colors = {'k', 'k', 'k', 'b', 'g', 'r', 'c', 'm'};
hold on
for i = 2:9
    
    plot(N, p_aves(i,:), colors{i - 1});
    
end
legend('Var = 0.1','Var = 0.2','Var = 0.5','Var = 0.8','Var = 1','Var = 2','Var = 5','Var = 8','Var = 10')%,'Location', 'SouthEast')
xlabel('N')
ylabel('Average p-values')
title('P-Values for Distributions of Changing Variances')

% The two distributions being compared again have different means: 0 and 1.
% When the variance is very low, near 0.1, the distributions are tighter
% around their respective means. A t-test will be more likely to
% distinguish them as different distributions, because there will be very
% little cross-over between the data from each distribution. However, once
% the variance becomes large, near 10, the two distributions, whose means
% only differ by 1, will have significant crossover with each other. A
% t-test comparing them will have a hard time distinguishing them as
% different, and p-values will remain higher, towards 1. In both cases, the
% p-values will decrease with increasing N because there will be more data
% generated that clusters around each mean.


