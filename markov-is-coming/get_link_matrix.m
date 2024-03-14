function [Link] = get_link_matrix(Labyrinth)
    Link = get_adjacency_matrix(Labyrinth);
    rows = rows(Link);
    columns = columns(Link);
    %am impartit fiecare element al liniei la numarul de valori de 1 de pe aceasta
    for i = 1:rows
      x = 0;
      for j = 1:columns
        x = x + Link(i, j);
      endfor
      for j = 1:columns
        Link(i, j) = Link(i, j) / x;
      endfor
    endfor
endfunction
