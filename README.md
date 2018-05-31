# Nondeterministic Constraint Logic Puzzle

Implements a nondeterministic constraint logic puzzle. 

See https://en.wikipedia.org/wiki/Nondeterministic_constraint_logic.

I'm working on optimizing the puzzle generation algorithm.   There really is a better way to do it than I'm doing now.  (I want to do something like this: flip one edge, then keep flipping edges that that edge allows you to flip until it reaches a branch where two edges can be flipped instead of just one.  Consider that all as one step, then branch out and repeat until a solution is found.  Then one knows that puzzle is solveable.)

The .nb file can be opened and edited in the Wolfram Development Platform https://develop.open.wolframcloud.com/app/ for free.  Unfortunately the web version does NOT take mouse clicks right now.  (I might be able to fix this?)  But if you want to play with it you can also open the .cdf file with the free Wolfram CDF player https://www.wolfram.com/cdf-player/ and it will work.  I haven't played around with this Python implementation of some of Mathematica yet https://mathics.github.io/ but SOMETHING could be done with that as well I'm sure.
