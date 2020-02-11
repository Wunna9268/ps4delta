
project "core"
    language "C++"
    kind "StaticLib"

    includedirs {
        ".",
		"./orbis",
        "../common",
        "../common/utl",
        "../video_core",

        -- 3rd party
        "../vendor/fmtlib/include",
        "../vendor/capstone/include",
        "../vendor/zlib",
        "../vendor/xbyak/xbyak",
        "../vendor/tinytoml/include"
    }

    links {
        "common",
        "capstone",
        "zlib",
		"fmtlib"
    }

    files {
        "premake5.lua",
		"**.inl",
        "**.h",
        "**.hpp",
        "**.cpp",
        "**.c"
    }