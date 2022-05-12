project "RuntimeCompiler"
	kind "StaticLib"
	language "C++"
	location "%{wks.location}/ProjectFiles"
	staticruntime "off"
	
	targetdir (libdir .. "/%{prj.name}")
	objdir (libdir .. "/%{prj.name}/int")

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

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:DebugEditor"
		runtime "Debug"
		symbols "on"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:ReleaseEditor"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

project "RuntimeObjectSystem"
	kind "StaticLib"
	language "C++"
	location "%{wks.location}/ProjectFiles"
	staticruntime "off"
	
	targetdir (libdir .. "/%{prj.name}")
	objdir (libdir .. "/%{prj.name}/int")
	
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
	
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:DebugEditor"
		runtime "Debug"
		symbols "on"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:ReleaseEditor"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"
