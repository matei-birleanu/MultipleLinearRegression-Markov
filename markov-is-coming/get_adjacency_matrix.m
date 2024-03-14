function [Adj] = get_adjacency_matrix(Labyrinth)
    rows = rows(Labyrinth);
    columns = columns(Labyrinth);
    Adj = zeros((rows * columns) + 2, (rows * columns) + 2);
    ro = rows * columns + 2;
    col = rows * columns + 2;
    %parcurg linia de sus
    for i = 1:columns
      binar = bitget(Labyrinth(1,i), 4);
      if(binar == 0)
        Adj(i, ro - 1) = 1;
      endif
     endfor
    %coloana din dreapta
    for i = 1:rows
       binar = bitget(Labyrinth(i,columns), 2);
       if(binar == 0)
         Adj( i * columns,ro) = 1;
       endif
    endfor
    %linia de jos
    for i = 1:columns
      binar = bitget(Labyrinth(rows,i), 3);
      if(binar == 0)
        Adj((rows - 1) * columns + i,ro - 1) = 1;
      endif
     endfor
     %coloana stanga
    for i = 1:rows
      binar = bitget(Labyrinth(i,1), 1);
      if(binar == 0)
        Adj( (i - 1) * columns + 1,ro) = 1;
      endif
    endfor
    %pacurg toata matricea 
    for i = 1:rows
      for j = 1:columns
        binar = bitget(Labyrinth(i,j), 1);
        if(binar == 0 && j != 1)
          Adj((i -1) * columns +j , (i -1) * columns +j -1) = 1;
          Adj((i -1) * columns +j -1, (i -1) * columns +j) = 1;
        endif
        binar = bitget(Labyrinth(i,j), 2);
        if(binar == 0  && j != columns)
          Adj((i -1) * columns +j ,(i -1) * columns +j + 1) = 1;
          Adj((i -1) * columns +j + 1 , (i -1) * columns +j) = 1;
        endif
        binar = bitget(Labyrinth(i,j), 3);
        if(binar == 0 && i != rows)
          Adj((i -1) * columns +j ,i * columns +j) = 1;
          Adj(i * columns +j , (i -1) * columns +j) = 1;
        endif
        binar = bitget(Labyrinth(i,j), 4);
        if(binar == 0 && i != 1)
          Adj((i -1) * columns +j, (i -2) * columns +j) = 1;
          Adj((i -2) * columns +j, (i -1) * columns +j) = 1;
        endif
      endfor
    endfor
    Adj((rows * columns) +1, (rows * columns) +1) = 1;
    Adj((rows * columns) +2, (rows * columns) +2) = 1;
    %disp(Adj);
endfunction


