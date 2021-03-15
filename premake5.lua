project "RuntimeCompiler"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Aurora/RuntimeCompiler/**.h",
		"Aurora/RuntimeCompiler/**.cpp",
	}

	includedirs
	{
		"Aurora/RuntimeCompiler/"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

project "RuntimeObjectSystem"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"Aurora/RuntimeObjectSystem/**.h",
		"Aurora/RuntimeObjectSystem/**.cpp",
	}
	
	includedirs
	{
		"Aurora/RuntimeObjectSystem/"
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
	