function [Y, InitialMatrix] = parse_data_set_file(file_path)
  fid = fopen(file_path,'r');
  m = fscanf(fid, "%d", " ");
  n = fscanf(fid, "%d", " ");
  %disp(m);
  %disp(n);
  matrice = cell(m,n);
  InitialMatrix = cell(m, n);
  for i = 1:m
  	%citesc separat prima coloana
    Y(i) = fscanf(fid, "%d", " ");
    for j= 1:n
      InitialMatrix{i,j} = fscanf(fid, "%s", " ");
    endfor
  endfor
  disp(InitialMatrix);
  fclose(fid);
endfunction
