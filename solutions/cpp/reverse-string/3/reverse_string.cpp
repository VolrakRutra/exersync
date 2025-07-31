#include "reverse_string.h"

namespace reverse_string {
	std::string reverse_string(std::string orig) {
		std::string result = "";
		for (int i = orig.length() - 1; i >= 0; i--) {
			result += orig[i];
		}
		return result;
	}
}  // namespace reverse_string
