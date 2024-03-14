function [x, err, steps] = perform_iterative(G, c, x0, tol, max_steps)
  prev_x = x0;
  steps = 0;

  while 1
    x = G * prev_x + c;
    err = norm(x - prev_x);
    steps++;

    if (steps == max_steps) || (err < tol)
      return;
    endif

    prev_x = x;
  endwhile

endfunction
