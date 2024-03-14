function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
 
  % parcurg FeatureMatrix si inlocuiesc pe rand cuvintele cu valorile numerice
  % asociate acestora
 

  [lin, col] = size(InitialMatrix);
  for i = 1:lin
    k = 0;
    for j = 1:col
      
 
    if(strcmp(InitialMatrix{i,j}, "furnished") == 1)
            FeatureMatrix(i,j) = 0;
            FeatureMatrix(i, j+1) = 0;
            k = 1;
     elseif(strcmp(InitialMatrix{i,j}, "semi-furnished") == 1)
            FeatureMatrix(i,j) = 1;
            FeatureMatrix(i, j+1) = 0;
            k = 1;
     elseif(strcmp(InitialMatrix{i,j}, "unfurnished"))
            FeatureMatrix(i,j) = 0;
            FeatureMatrix(i, j+1) = 1;
            k = 1;
     elseif(strcmp(InitialMatrix{i,j}, "no"))
            FeatureMatrix(i, j + k) = 0;
     elseif(strcmp(InitialMatrix{i,j}, "yes"))
            FeatureMatrix(i, j + k) = 1;
      else
           FeatureMatrix(i,j+k) = str2num(InitialMatrix{i,j});
    endif
  
   endfor
   endfor
    
endfunction
