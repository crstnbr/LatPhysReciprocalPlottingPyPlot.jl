################################################################################
#
#   FUNCTIONS FOR PLOTTING OF BRILLOUIN ZONES
#
################################################################################

# overwriting the plot function of PyPlot (2D)
function PyPlot.plot(
            bz :: BZ
            ;
            BZ_corners :: Bool = true,
            BZ_color :: Vector{<:Integer} = [10,10,10],
            BZ_corner_size :: Real = 1,
            BZ_linewidth :: Real = 1,
            kwargs...
        ) where {L,N,P<:AbstractReciprocalPoint{2},B<:AbstractBond{L,N},R<:AbstractReciprocalUnitcell{P,B},BZ<:AbstractBrillouinZone{R}}

    # scatter all corners
    if BZ_corners
        # scatter all corners
        scatter(
            [c[1] for c in corners(bz)],
            [c[2] for c in corners(bz)],
            color=BZ_color./255,
            markersize=BZ_corner_size
        )
    end
    # draw the surrounding faces
    for f in faces(bz)
        # plot the BZ face
        plot(
            [corners(bz)[i][1] for i in f],
            [corners(bz)[i][2] for i in f],
            color = BZ_color./255,
            linewidth = BZ_linewidth,
            linestyle = "-",
        )
    end
end

# overwriting the plot function of PyPlot (3D)
function PyPlot.plot(
            bz :: BZ
            ;
            BZ_corners :: Bool = true,
            BZ_color :: Vector{<:Integer} = [10,10,10],
            BZ_corner_size :: Real = 1,
            BZ_linewidth :: Real = 1,
            kwargs...
        ) where {L,N,P<:AbstractReciprocalPoint{3},B<:AbstractBond{L,N},R<:AbstractReciprocalUnitcell{P,B},BZ<:AbstractBrillouinZone{R}}

    # scatter all corners
    if BZ_corners
        # scatter all corners
        scatter3D(
            [c[1] for c in corners(bz)],
            [c[2] for c in corners(bz)],
            [c[3] for c in corners(bz)],
            color=BZ_color./255,
            markersize=BZ_corner_size
        )
    end
    # draw the surrounding faces
    for f in faces(bz)
        # plot the BZ face
        plot3D(
            [corners(bz)[i][1] for i in f],
            [corners(bz)[i][2] for i in f],
            [corners(bz)[i][3] for i in f],
            color = BZ_color./255,
            linewidth = BZ_linewidth,
            linestyle = "-",
        )
    end
end

# export the plot function
export plot
