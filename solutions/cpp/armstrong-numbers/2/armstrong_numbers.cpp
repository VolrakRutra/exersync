#include "armstrong_numbers.h"
#include <string>
#include <cmath>

namespace armstrong_numbers {
	bool is_armstrong_number(int num) {
		if (num < 10) {
			return true;
		}

		std::string str_num = std::to_string(num);
		int len = str_num.length();

		int sum = 0;
		for (int i = 0; i < len; i++) {
			int n = str_num[i] - '0';
			sum += pow(n, len);
		}

		return num == sum;
	}
}  // namespace armstrong_numbers
