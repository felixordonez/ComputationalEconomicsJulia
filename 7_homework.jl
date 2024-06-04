function params(; β = 0.96,
    R = 1.04,
    ā = 150, 
    T = 3)

    y = ones(T)*100
    a = zeros(T+1)*100
    a[1] = ā
    #a[end] = 0 #a_T+1
    eq = zeros(T-1)
    return (β=β, R=R, ā=ā, y=y, eq=eq, a=a, T=T)
end 


# Función de utilidad, asumiendo utilidad CRRA
function u(c; γ=2.0)
    return c > 0 ? c^(1 - γ) / (1 - γ) : -Inf  # Devuelve -Inf para consumos no válidos
end

# Derivada de la función de utilidad
function u_prime(c; γ=2.0)
    return c^(-γ)
end

# Sistema de ecuaciones de Euler
function euler(p, x)
    @unpack β, R, ā, y, eq, a, T = p
    #x: from a2 to at #len=t-1
    #y: from a1 to at #len=t
    a[2:T] .= x
    eq[1] = u_prime(R*a[1] + y[1]- a[2])  - β * R * u_prime(R*a[2] + y[2]- a[3]) #phi(a1,a2,a3)
    eq[end] = u_prime(R*a[end-2] + y[end-1]- a[end-1])  - β * R * u_prime(R*a[end-1] + y[end] - a[end]) #phi(a1,a2,a3)
    for t in 2:T-1
        eq[t] = u_prime(R*a[t] + y[t]- a[t+1])  - β * R * u_prime(R*a[t+1] + y[t+1]- a[t+2]) #phi(at,at+1,at+2)
    end

    return eq
end

p = params(T=60)
initial_guess = ones(p.T-1)*150
result = nlsolve(x-> euler(p,x), initial_guess,)  #  autodiff = :forward
p.a[2:p.T] .= result.zero

function fun_c(p,a)
    @unpack T, R, y = p
    c = zeros(T)
    for t in 1:T
        c[t] = R*a[t] + y[t]- a[t+1]
    end

    return c
end
c = fun_c(p, p.a)