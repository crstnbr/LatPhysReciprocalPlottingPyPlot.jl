################################################################################
#
#   FUNCTIONS FOR PLOTTING OF RECIPROCAL POINTS
#   (overwriting plotSite function for AbstractSite)
#
################################################################################

# PLOTTING RECIPROCAL POINTS IN 2D
function LatPhysPlottingPyPlot.plotSite(
            site    :: S,
            radius  :: Real,
            color   :: Vector{<:Integer}
            ;
            site_labels :: Bool = true,
            use_LaTeX :: Bool = true,
            site_label_fontsize :: Real = 12,
            site_label_offset :: Vector{<:Real} = [0.1, 0.0],
            kwargs...
        ) where {S<:AbstractReciprocalPoint{2}}

    # get the coordinates
    x = point(site)[1]
    y = point(site)[2]
    # scatter the point
    PyPlot.scatter([x,],[y,], color=color./255)
    # maybe annotate the label as text
    if site_labels
        if use_LaTeX
            PyPlot.text(x+site_label_offset[1],y+site_label_offset[2], LaTeXString(L"$"*labelLaTeX(site)*L"$"), fontsize=site_label_fontsize, color=color./255)
        else
            PyPlot.text(x+site_label_offset[1],y+site_label_offset[2], String(label(site)), fontsize=site_label_fontsize, color=color./255)
        end
    end
end

# PLOTTING RECIPROCAL POINTS IN 3D
function LatPhysPlottingPyPlot.plotSite(
            site    :: S,
            radius  :: Real,
            color   :: Vector{<:Integer}
            ;
            site_labels :: Bool = true,
            site_label_fontsize :: Real = 12,
            site_label_offset :: Vector{<:Real} = [0.1, 0.0, 0.0],
            kwargs...
        ) where {S<:AbstractReciprocalPoint{3}}

    # get the coordinates
    x = point(site)[1]
    y = point(site)[2]
    z = point(site)[3]
    # scatter the point
    PyPlot.scatter3D([x,],[y,],[z,], color=color./255)
    # maybe annotate the label as text
    if site_labels
        if use_LaTeX
            PyPlot.text3D(x+site_label_offset[1],y+site_label_offset[2],z+site_label_offset[3],  LaTeXString(L"$"*labelLaTeX(site)*L"$"), fontsize=site_label_fontsize, color=color./255)
        else
            PyPlot.text3D(x+site_label_offset[1],y+site_label_offset[2],z+site_label_offset[3],  String(label(site)), fontsize=site_label_fontsize, color=color./255)
        end
    end
end

# export the function
export plotSite
