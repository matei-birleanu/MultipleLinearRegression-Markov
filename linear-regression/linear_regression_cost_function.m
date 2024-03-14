function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  [lin, col] = size(FeatureMatrix);
  Error = 0;
  suma = 0;
  for i = 1:lin
    h_fct = 0;
    for j = 1:col
      if(FeatureMatrix(i,j) != 0)
        h_fct = h_fct + Theta(j+1) * FeatureMatrix(i,j);
      endif
    endfor
    suma = suma + (h_fct - Y(i))^2;
  endfor
  Error = 1/(2*lin) * suma;
 endfunction
