#include "reverse_string.h"

namespace reverse_string {
	std::string reverse_string(std::string orig) {
		std::string copy = orig;
		std::reverse(copy.begin(), copy.end());
		return copy;
	}
}  // namespace reverse_string
