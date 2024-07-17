function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 5
    @assert length(residual) == 7
    @assert length(y) == 21
    @assert length(x) == 1
    @assert length(params) == 6
@inbounds begin
    residual[1] = (1/y[9]) - (T[1]*T[3]);
    residual[2] = (1/y[9]) - (T[1]*y[13]/y[21]);
    residual[3] = (T[5]) - (y[9]+y[10]-(1-params[2])*y[3]);
    residual[4] = (y[8]) - (T[5]);
    residual[5] = (params[1]*y[13]) - ((y[14]/params[6])^params[5]);
    residual[6] = (y[11]) - (exp(y[12]));
    residual[7] = (y[12]) - (params[4]*y[5]+x[1]);
end
    return nothing
end

