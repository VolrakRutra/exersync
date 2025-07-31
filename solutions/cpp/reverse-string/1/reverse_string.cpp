#include "reverse_string.h"
#include <string>

namespace reverse_string {
	std::string reverse_string(std::string orig) {
		std::reverse(orig.begin(), orig.end());
		return orig;
	}
}  // namespace reverse_string
