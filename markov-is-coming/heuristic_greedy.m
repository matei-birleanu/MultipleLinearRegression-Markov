 function [path] = heuristic_greedy(start_position, probabilities, Adj)
   lines = rows(Adj);
   cols = columns(Adj);
   path(1) = start_position;
   [m, n] = size(probabilities);
   visited = zeros(m ,n);
   visited(start_position) = 1;
   varf = 1;
   %am initializat stiva
   while (varf > 0)
     pozitie = path(varf);
     disp(varf)
     disp(path)
     %verific daca am ajuns in pozitia de win
     if(Adj(pozitie, cols - 1) == 1)
        break;
     endif
     if(visited(pozitie) == 0)
        varf = varf - 1;
     endif
     vec = 0;
     maxim = 0;
     %aleg vecinul cu cea mai mare probabilitate de castig
     for i = 1:cols
       if (Adj(pozitie , i) == 1 && visited(i) == 0 && probabilities(i) > maxim)
         maxim = probabilities(i);
         vec = i;
       endif
     endfor
     if(vec > 0)
        visited(vec) = 1;
        varf = varf + 1;
        path(varf) = vec;
     endif;
   endwhile
     varf = varf + 1;
     path(varf) = m - 1;
 endfunction

