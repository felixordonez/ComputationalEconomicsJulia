function SparseDynamicG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 6
    @assert length(g1_v) == 22
    @assert length(y) == 21
    @assert length(x) == 1
    @assert length(params) == 6
@inbounds begin
g1_v[1]=1-params[2]+T[6];
g1_v[2]=(-T[6]);
g1_v[3]=(-params[4]);
g1_v[4]=1;
g1_v[5]=(-1)/(y[9]*y[9]);
g1_v[6]=(-1)/(y[9]*y[9]);
g1_v[7]=(-1);
g1_v[8]=(-(T[1]*params[3]*y[18]*get_power_deriv(y[10],params[3]-1,1)));
g1_v[9]=(-1);
g1_v[10]=T[4];
g1_v[11]=(-T[4]);
g1_v[12]=1;
g1_v[13]=(-exp(y[12]));
g1_v[14]=1;
g1_v[15]=(-(T[1]*1/y[21]));
g1_v[16]=params[1];
g1_v[17]=(-(1/params[6]*get_power_deriv(y[14]/params[6],params[5],1)));
g1_v[18]=(-(T[3]*(-params[1])/(y[16]*y[16])));
g1_v[19]=(-(y[13]/y[21]*(-params[1])/(y[16]*y[16])));
g1_v[20]=(-(T[1]*params[3]*T[2]));
g1_v[21]=(-(T[1]*(-y[13])/(y[21]*y[21])));
g1_v[22]=(-1);
end
    return nothing
end

