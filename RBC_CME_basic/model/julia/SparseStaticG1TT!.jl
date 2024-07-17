function SparseStaticG1TT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    SparseStaticResidTT!(T, y, x, params)
@inbounds begin
T[6] = y[4]*get_power_deriv(y[3],params[3],1)
end
    return nothing
end

