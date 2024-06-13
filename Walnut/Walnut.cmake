﻿add_library("Walnut" STATIC
  "Walnut/src/Walnut/Application.cpp"
  "Walnut/src/Walnut/Application.h"
  "Walnut/src/Walnut/EntryPoint.h"
    "Walnut/src/Walnut/ImGui/ImGuiBuild.cpp"
  "Walnut/src/Walnut/Image.cpp"
  "Walnut/src/Walnut/Image.h"
    "Walnut/src/Walnut/Input/Input.cpp"
    "Walnut/src/Walnut/Input/Input.h"
    "Walnut/src/Walnut/Input/KeyCodes.h"
  "Walnut/src/Walnut/Layer.h"
  "Walnut/src/Walnut/Random.cpp"
  "Walnut/src/Walnut/Random.h"
  "Walnut/src/Walnut/Timer.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("Walnut"
    "ImGui"
    "GLFW"
  )
  set_target_properties("Walnut" PROPERTIES
    OUTPUT_NAME "Walnut"
    ARCHIVE_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Debug-windows-x86_64/Walnut"
    LIBRARY_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Debug-windows-x86_64/Walnut"
    RUNTIME_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Debug-windows-x86_64/Walnut"
  )
endif()
target_include_directories("Walnut" PRIVATE
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/Walnut/src>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/vendor/imgui>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/vendor/glfw/include>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/vendor/stb_image>
  $<$<CONFIG:Debug>:C:/VulkanSDK/1.3.268.0/Include>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/Walnut/../vendor/glm>
)
target_compile_definitions("Walnut" PRIVATE
  $<$<CONFIG:Debug>:WL_PLATFORM_WINDOWS>
  $<$<CONFIG:Debug>:WL_DEBUG>
)
target_link_directories("Walnut" PRIVATE
)
target_link_libraries("Walnut"
  $<$<CONFIG:Debug>:ImGui>
  $<$<CONFIG:Debug>:GLFW>
  $<$<CONFIG:Debug>:C:/VulkanSDK/1.3.268.0/Lib/vulkan-1.lib>
)
target_compile_options("Walnut" PRIVATE
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("Walnut" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("Walnut"
    "ImGui"
    "GLFW"
  )
  set_target_properties("Walnut" PROPERTIES
    OUTPUT_NAME "Walnut"
    ARCHIVE_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Release-windows-x86_64/Walnut"
    LIBRARY_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Release-windows-x86_64/Walnut"
    RUNTIME_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Release-windows-x86_64/Walnut"
  )
endif()
target_include_directories("Walnut" PRIVATE
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/Walnut/src>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/vendor/imgui>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/vendor/glfw/include>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/vendor/stb_image>
  $<$<CONFIG:Release>:C:/VulkanSDK/1.3.268.0/Include>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/Walnut/../vendor/glm>
)
target_compile_definitions("Walnut" PRIVATE
  $<$<CONFIG:Release>:WL_PLATFORM_WINDOWS>
  $<$<CONFIG:Release>:WL_RELEASE>
)
target_link_directories("Walnut" PRIVATE
)
target_link_libraries("Walnut"
  $<$<CONFIG:Release>:ImGui>
  $<$<CONFIG:Release>:GLFW>
  $<$<CONFIG:Release>:C:/VulkanSDK/1.3.268.0/Lib/vulkan-1.lib>
)
target_compile_options("Walnut" PRIVATE
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("Walnut" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  add_dependencies("Walnut"
    "ImGui"
    "GLFW"
  )
  set_target_properties("Walnut" PROPERTIES
    OUTPUT_NAME "Walnut"
    ARCHIVE_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Dist-windows-x86_64/Walnut"
    LIBRARY_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Dist-windows-x86_64/Walnut"
    RUNTIME_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/Walnut/bin/Dist-windows-x86_64/Walnut"
  )
endif()
target_include_directories("Walnut" PRIVATE
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/Walnut/src>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/vendor/imgui>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/vendor/glfw/include>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/vendor/stb_image>
  $<$<CONFIG:Dist>:C:/VulkanSDK/1.3.268.0/Include>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/Walnut/../vendor/glm>
)
target_compile_definitions("Walnut" PRIVATE
  $<$<CONFIG:Dist>:WL_PLATFORM_WINDOWS>
  $<$<CONFIG:Dist>:WL_DIST>
)
target_link_directories("Walnut" PRIVATE
)
target_link_libraries("Walnut"
  $<$<CONFIG:Dist>:ImGui>
  $<$<CONFIG:Dist>:GLFW>
  $<$<CONFIG:Dist>:C:/VulkanSDK/1.3.268.0/Lib/vulkan-1.lib>
)
target_compile_options("Walnut" PRIVATE
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  set_target_properties("Walnut" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()