# Welcome to Computational Economics whith Julia

Teachers: [Rodrigo Caputo](https://sites.google.com/a/fen.uchile.cl/rodrigo-caputo/) and [Félix Ordóñez](https://felixordonez.github.io/)


## Objectives of this Course 
This course aims to study economic models and understand their foundations based on computational applications developed in [Julia]( https://julialang.org/). The approach is practical: start with an economic problem, select an appropriate numerical technique to analyze it, apply the technique to the problem, and present the findings.

The choice of programming language is relevant. Julia is a modern, high-performance programming language designed for scientific computing and data manipulation. Originally developed by computer scientists and mathematicians at MIT under the leadership of Alan Edelman, Julia combines three key features for highly intensive computing tasks, perhaps like no other contemporary programming language: it is fast, easy to learn and use, and open source. Among its competitors, C/C++ is extremely fast and the open-source compilers available for it are excellent, but it is difficult to learn, particularly for those with little programming experience, and cumbersome to use, for example, when creating prototypes of new code. Python and R are open source and easy to learn and use, but their numerical performance can be disappointing. Matlab is relatively fast (though less so than Julia) and is easy to learn and use, but is quite expensive to purchase (and its age is starting to show).

## Prerequisites 
- Intermediate knowledge of microeconomics, macroeconomics, and mathematics is required. 
- No prior programming knowledge is necessary. 
- This is a graduate level course in Computational Economics.
- You need a laptop. 
- You need a [Github](https://github.com/) account. 

## Evaluation
The learning methodology will be conducted in three parts: first, the basic knowledge of the programming language will be covered; then, solving an economic model, transferring it to Julia, and analyzing the results; and finally, optimizing the code.

- Evaluation part 1: 25%
- Evaluation part 2: 25%
- Evaluation part 3: 25%
- Participation: 25%

## Syllabus
### 1. Introduction to Programming
1. Introduction to programming.
2. Why Julia?
3. Installation, IDE, and Github.
4. Values, variables, and types.
5. Fundamental commands: variables, arithmetic operations, logical operations, Boolean operators and functions, standard mathematical operations, arrays, vectors, matrices, sparse matrices, text, I/O.
6. Programming structures: functions, recursion, MapReduce, loops, conditionals.
7. Numerical Methods (intro).

### 2. Discussion of Economic Models, Programming, and Visualization of Results
**Basic Models**
1. Solow Model: add trends to demographics and tech growth. Study transitional dynamics.
2. Neoclassical Model: Tax experiments (Japan paper).
3. Overlapping Generations Model (OLG): pension reform, add demographic and tech growth.

**Intermediate**
1. Adding uncertainty, RBC (Book ABC for RBC): linearization, DSGE and using Dynare in Julia. Shock analysis, var decomposition.
2. Infinite horizon: RBC with constraints, open economy models. Simulation, compute stationary distribution, cost of business cycle.
3. Life Cycle models: adding labor: tax policy/welfare analysis, compute MPC.
4. Industry Dynamics: Hopenhayn.

**Advance**
1. Solution techniques: VFI, PFI, endogenous grid, time iteration, collocation, linearization.
2. Portfolio Choice Models: investment over the cycle, effect of taxation.
3. Investment models: Whited survey.
4. Advanced: Aiyagari, Hopenhayn: tax and GE.

### 3. Third Part: Optimization and Performance in Model Solving
1. Modular programming. Why do we avoid global variables?
2. Use of structures, types, and evaluation of allocations.
3. Parallelization.



## References

1. [Quantitative Economics with Julia](https://julia.quantecon.org/intro.html) by J. Perla, T. Sargent and J. Stachurski. *This material will accompany us during much of the course*. 
2. [Numerical methods for macroeconomists](https://www.jeremygreenwood.net/Book/NM4M.pdf) J. Greenwood and R. Marto (2022). *Complete book of numerical methods with Julia examples.*
3. [Numerical Methods in Economics](https://mitpress.mit.edu/9780262547741/numerical-methods-in-economics/)  K. Judd (1998). *The classics*.
4. [Applied Computational Economics and Finance](https://mitpress.mit.edu/9780262633093/applied-computational-economics-and-finance/) M. Miranda and P. Fackler (2002). *The classics*.
5. [SciML Style Guide for Julia](https://github.com/SciML/SciMLStyle). *Is a style guide for the Julia programming language*.
6. [The Julia Lenguage](http://web.mit.edu/julia_v0.6.2/julia/share/doc/julia/html/en/manual/introduction.html). *Complete manual on Julia*.
7. [Julia Forum](https://discourse.julialang.org/). *A very helpful forum for questions about Julia.*
8. [Dynamic Economics: Quantitative Methods and Applications](https://mitpress.mit.edu/9780262547888/dynamic-economics/) J. Adda and R. Cooper (2023). *An integrated approach to the empirical application of dynamic optimization programming models*.
9. [The ABCs of RBCs](https://www.hup.harvard.edu/books/9780674028142) G. McCandless (2008). *A good introduction to Real Business Cycle (RBC) and New-Keynesian models*.


![Alt Text](https://julialang.org/assets/infra/waves.gif)

```{tableofcontents}
```