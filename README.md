# Numerical Analysis Algorithm Repository

Just an open source project to put our codes here. Feel free to contribute.

Note: Each algorithm need it's time complexity, what's it's doing, and if possible comparison with other algorithm that can solve the same problem.

# Demos You can try

## Gauss Jordan Elimination

Just a standard algorithm to solve `Ax=b` problem in linear algebra

```
% Solving Ax=b

% Generate matrix 5x5
A = rand(5)
% Generate vector 5x1 (column vector)
b = rand(5,1)

% Use Gauss Jordan But Pivot algorithm to avoid division by zero thingy
[U bt] = GaussOny(A, b)
% After Gauss jordan, we're left with upper triangular matrix and bt that has been treated with Elementary Row Operations
x = Atas(U, bt)

% Congrats, you've gotten x. Now we check it.
% Notice that Ax=b can be rewritten as  Ax-b=0
% The result should be 0 or close to machine epsilon
A*x-b
```

## Gauss Jordan Elimination but Pivot

The problem with gauss jordan is that there could be division by zero. We don't want that. That's why we swap rows.

```
% Solving Ax=b

% Generate matrix 5x5
A = rand(5)
% Generate vector 5x1 (column vector)
b = rand(5,1)

% Use Gauss Jordan But Pivot algorithm to avoid division by zero thingy
[U bt] = GaussPivot(A, b)
% After Gauss jordan, we're left with upper triangular matrix and bt that has been treated with Elementary Row Operations
x = Atas(U, bt)

% Congrats, you've gotten x. Now we check it.
% Notice that Ax=b can be rewritten as  Ax-b=0
% The result should be 0 or close to machine epsilon
A*x-b
```
