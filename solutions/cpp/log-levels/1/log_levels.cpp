#include <string>

namespace log_line {
	std::string message(std::string log_line) {
		int loc = log_line.find("]: ");
		return log_line.substr(loc + 3);
	}

	std::string log_level(std::string log_line) {
		int finish = log_line.find(']') - 1;
		return log_line.substr(1, finish);
	}

	std::string reformat(std::string log_line) {
		return message(log_line) + " (" + log_level(log_line) + ")";
	}
} // namespace log_line
