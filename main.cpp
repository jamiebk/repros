#include <fmt/format.h>

static auto repro_name_ = "?";

int main() {
	using namespace std;
	auto msg = fmt::format("Running repro: {}", repro_name_);
	printf(msg.c_str());
	return 0;
}
