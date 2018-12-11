################################################################################
#
#   FUNCTIONS FOR PLOTTING OF RECIPROCAL POINTS
#   (overwriting plotSite function for AbstractSite)
#
################################################################################

# PYPLOT PLOT FUNCTION OVERWRITTEN
function PyPlot.plot(
            path :: P
            ;
            color :: Vector{<:Integer} = [250,30,0],
            site_radius :: Real = 0.5,
            kwargs...
        ) where {S<:AbstractReciprocalPoint{2}, P<:AbstractReciprocalPath{S}}

    # plot all points in the path
    for p in points(path)
        # plot the point
        plotSite(p,site_radius,color;kwargs...)
    end
    # connect the points
    PyPlot.plot([point(p)[1] for p in points(path)], [point(p)[2] for p in points(path)], color=color./255, linewidth=1, linestyle="-")
end

# PYPLOT PLOT FUNCTION OVERWRITTEN
function PyPlot.plot(
            path :: P
            ;
            color :: Vector{<:Integer} = [250,30,0],
            site_radius :: Real = 0.5,
            kwargs...
        ) where {S<:AbstractReciprocalPoint{3}, P<:AbstractReciprocalPath{S}}

    # plot all points in the path
    for p in points(path)
        # plot the point
        plotSite(p,site_radius,color;kwargs...)
    end
    # connect the points
    PyPlot.plot3D([point(p)[1] for p in points(path)], [point(p)[2] for p in points(path)], [point(p)[3] for p in points(path)], color=color./255, linewidth=1, linestyle="-")
end

# export the plot function
export plot
