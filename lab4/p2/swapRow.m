function A = swapRow(A, row1, row2)
  A([row2, row1], :) = A([row1, row2], :);

