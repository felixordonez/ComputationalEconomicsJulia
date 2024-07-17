function SparseStaticG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 6
    @assert length(g1_v) == 17
    @assert length(y) == 7
    @assert length(x) == 1
    @assert length(params) == 6
@inbounds begin
g1_v[1]=1;
g1_v[2]=(-1)/(y[2]*y[2])-T[3]*(-params[1])/(y[2]*y[2]);
g1_v[3]=(-1)/(y[2]*y[2])-y[6]/y[7]*(-params[1])/(y[2]*y[2]);
g1_v[4]=(-1);
g1_v[5]=(-(T[1]*params[3]*y[4]*get_power_deriv(y[3],params[3]-1,1)));
g1_v[6]=T[6]-(1-(1-params[2]));
g1_v[7]=(-T[6]);
g1_v[8]=(-(T[1]*params[3]*T[2]));
g1_v[9]=T[4];
g1_v[10]=(-T[4]);
g1_v[11]=1;
g1_v[12]=(-exp(y[5]));
g1_v[13]=1-params[4];
g1_v[14]=(-(T[1]*1/y[7]));
g1_v[15]=params[1];
g1_v[16]=(-(T[1]*(-y[6])/(y[7]*y[7])));
g1_v[17]=(-(1/params[6]*get_power_deriv(y[7]/params[6],params[5],1)));
end
    if ~isreal(g1_v)
        g1_v = real(g1_v)+2*imag(g1_v);
    end
    return nothing
end

