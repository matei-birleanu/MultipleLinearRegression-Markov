function [decoded_path] = decode_path(path, lines, cols)
    for i = 1:length(path) - 1
      poz = path(i);
      %am aplicat formulele de legatura intre pozitie si indicii i si j ai matricei
      decoded_path(i, 1) = floor(((poz - 1)/ cols)) + 1;
      decoded_path(i, 2) = mod(poz - 1, cols) + 1;
    endfor
endfunction
