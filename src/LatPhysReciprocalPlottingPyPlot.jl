################################################################################
#
#   module LatPhysPlottingPyPlot
#   -> PyPlot
#   -> LatPhysBase
#   -> LinearAlgebra
#
#   --> PLOTTING OF LATTICES WITH PYPLOT
#           - 2D lattices
#           - 3D lattices
#
################################################################################


# start of module
module LatPhysReciprocalPlottingPyPlot


# used libraries
using LatPhysBase
using LatPhysReciprocal
using LinearAlgebra
using LatPhysPlottingPyPlot
using LaTeXStrings
using PyPlot

# explicitly import PyPlot.plot to overwrite
import PyPlot.plot
# explicitly import from basic plotting module
import LatPhysPlottingPyPlot.plotSite
import LatPhysPlottingPyPlot.plotSiteComplex



# Plotting of points
include("reciprocal_point_plotting.jl")

# Plotting of paths
include("reciprocal_path_plotting.jl")


# end of module
end
