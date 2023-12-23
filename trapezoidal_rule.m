function result = trapezoidal_rule(f, a, b, h)
    % Calculate the integral of a function using the trapezoidal rule with a given step size.
    n = ceil((b - a) / h);
    result = 0.5 * (f(a) + f(b));
    for i = 1:n-1
        result = result + f(a + i * h);
    end
    result = result * h;
end

