#include "Logger.h"

#include <fstream>
#include <filesystem>

namespace Logger
{
	void Log(const std::vector<float>& v)
	{
		std::string path = std::filesystem::current_path().string() + "/Log.txt";
		std::ofstream file(path);
		if (file.is_open())
		{
			for (const auto& el : v)
			{
				file << el << "\t";
			}
			file << std::endl;
			file.close();
		}
	}
}