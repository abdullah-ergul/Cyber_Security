#pragma once

namespace MathLib {
    class Arithmetics {
        public:
            // Returns a + b
            static double Add(double a, double b);

            // Returns a - b
            static double Subtract(double a, double b);

            // Returns a * b
            static double Multiply(double a, double b);

            // Returns a / b
            static double Divide(double a, double b);

            // Returns a factorial
            static double Factorial(double a) {
                if (a == 2) {
                    return a;
                }
                return a * Arithmetics::Factorial(a - 1);
            }
     };
}