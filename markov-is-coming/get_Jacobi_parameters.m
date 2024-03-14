function [G, c] = get_Jacobi_parameters(Link)
    rows = rows(Link);
    columns = columns(Link);
    %am folosit implementarea utilizata in cadrul laboratorului
    c = zeros(rows - 2, 1);
    for i = 1:rows - 2
      c(i,1) = Link(i, rows - 1);
    endfor
    disp(c);
    G = zeros(rows - 2, columns - 2);
    for i = 1:rows - 2
      for j = 1:columns - 2
        G(i, j) = Link(i,j);
      endfor
    endfor
    disp(G);
endfunction
