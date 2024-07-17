function SparseDynamicResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
@inbounds begin
T[1] = params[1]/y[16]
T[2] = y[10]^(params[3]-1)
T[3] = params[3]*y[18]*T[2]+1-params[2]
T[4] = y[3]^params[3]
T[5] = y[11]*T[4]
end
    return nothing
end

