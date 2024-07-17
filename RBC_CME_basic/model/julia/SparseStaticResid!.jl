function SparseStaticResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 5
    @assert length(residual) == 7
    @assert length(y) == 7
    @assert length(x) == 1
    @assert length(params) == 6
@inbounds begin
    residual[1] = (1/y[2]) - (T[1]*T[3]);
    residual[2] = (1/y[2]) - (T[1]*y[6]/y[7]);
    residual[3] = (T[5]) - (y[2]+y[3]-y[3]*(1-params[2]));
    residual[4] = (y[1]) - (T[5]);
    residual[5] = (params[1]*y[6]) - ((y[7]/params[6])^params[5]);
    residual[6] = (y[4]) - (exp(y[5]));
    residual[7] = (y[5]) - (y[5]*params[4]+x[1]);
end
    if ~isreal(residual)
        residual = real(residual)+imag(residual).^2;
    end
    return nothing
end

