#include <boost/filesystem.hpp>

int main() {
	using namespace boost::filesystem;
	path pth = current_path();
	printf("Current path: %s", pth.string().c_str());
	return 0;
}
