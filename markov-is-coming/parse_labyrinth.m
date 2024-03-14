function [Labyrinth] = parse_labyrinth (filename)
      fid = fopen(filename,'r');
      x = fscanf(fid,"%d", " ");
      y = fscanf(fid,"%d", " ");
      disp(x);
      disp(y);
      Labyrinth = zeros(x, y);
      for i = 1:x
        for j = 1:y
          Labyrinth(i, j) = fscanf(fid,"%d", " ");
        endfor
      endfor
      fclose(fid);
      disp(Labyrinth);
endfunction
