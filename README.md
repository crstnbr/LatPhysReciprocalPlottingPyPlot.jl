# LatPhysReciprocalPlottingPyPlot.jl

Plotting in reciprocal space tools for elements of [`LatPhysReciprocal.jl`](https://github.com/janattig/LatPhysReciprocal.jl) which is part of [`LatticePhysics.jl`](https://github.com/janattig/LatticePhysics.jl) using `PyPlot.jl`.



## Contents

Plotting functions (using `PyPlot.jl`) for
1.  Reciprocal Paths
2.  Brillouin Zones



## Installation

You can install the package via the package mode in Julia (Pkg). However, since the package
is not listed in the Julia package repositories, you have to first install the unregistered
dependencies manually. To do so, first install [`LatticePhysics.jl`](https://github.com/janattig/LatticePhysics.jl) as specified on its Readme file. Then, install
```julia
(v1.0) pkg> add "https://github.com/janattig/LatPhysPlottingPyPlot.jl"
```
Finally install the main package with
```julia
(v1.0) pkg> add "https://github.com/janattig/LatPhysReciprocalPlottingPyPlot.jl"
```
