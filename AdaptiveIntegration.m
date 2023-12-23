function result = AdaptiveIntegration(f, a, b, tol, h)
    % Recursive function for adaptive integration using the trapezoidal rule.

    % Calculate the trapezoidal rule for the current step size
    integral_h = trapezoidal_rule(f, a, b, h);

    % Calculate the trapezoidal rule for half the step size
    integral_half_h = trapezoidal_rule(f, a, b, h / 2);

    % Estimate the error
    est_error = (4 / 3) * (integral_half_h - integral_h);

    % Check if the error is within the tolerance
    if abs(est_error) <= tol
        result = integral_half_h;
    else
        % Split the interval [a, b] into two sub-intervals
        mid = (a + b) / 2;

        % Recursively apply the adaptive integration to both sub-intervals
        left_integral = AdaptiveIntegration(f, a, mid, tol, h / 2);
        right_integral = AdaptiveIntegration(f, mid, b, tol, h / 2);

        % Return the sum of the integrals over the sub-intervals
        result = left_integral + right_integral;
    end
end
