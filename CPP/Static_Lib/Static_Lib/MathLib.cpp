#include "./MathLib.h"

namespace MathLib {
	double Arithmetics::Add(double a, double b) {
		return a + b;
	}

	double Arithmetics::Subtract(double a, double b) {
		return a - b;
	}

	double Arithmetics::Multiply(double a, double b) {
		return a * b;
	}

	double Arithmetics::Divide(double a, double b) {
		return a / b;
	}

	double Arithmetics::Factorial(double a) {
		if (a == 2) {
			return a;
		}
		return a * Arithmetics::Factorial(a - 1);
	}
}