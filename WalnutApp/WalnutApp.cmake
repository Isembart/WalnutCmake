add_executable("WalnutApp"
  "WalnutApp/src/WalnutApp.cpp"
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("WalnutApp"
    "Walnut"
  )
  set_target_properties("WalnutApp" PROPERTIES
    OUTPUT_NAME "WalnutApp"
    ARCHIVE_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Debug-windows-x86_64/WalnutApp"
    LIBRARY_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Debug-windows-x86_64/WalnutApp"
    RUNTIME_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Debug-windows-x86_64/WalnutApp"
  )
endif()
target_include_directories("WalnutApp" PRIVATE
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/vendor/imgui>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/vendor/glfw/include>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/Walnut/src>
  $<$<CONFIG:Debug>:C:/VulkanSDK/1.3.268.0/Include>
  $<$<CONFIG:Debug>:D:/Projekty/WalnutProject/WalnutApp/../vendor/glm>
)
target_compile_definitions("WalnutApp" PRIVATE
  $<$<CONFIG:Debug>:WL_PLATFORM_WINDOWS>
  $<$<CONFIG:Debug>:WL_DEBUG>
)
target_link_directories("WalnutApp" PRIVATE
)
target_link_libraries("WalnutApp"
  $<$<CONFIG:Debug>:Walnut>
)
target_compile_options("WalnutApp" PRIVATE
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("WalnutApp" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("WalnutApp"
    "Walnut"
  )
  set_target_properties("WalnutApp" PROPERTIES
    OUTPUT_NAME "WalnutApp"
    ARCHIVE_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Release-windows-x86_64/WalnutApp"
    LIBRARY_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Release-windows-x86_64/WalnutApp"
    RUNTIME_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Release-windows-x86_64/WalnutApp"
  )
endif()
target_include_directories("WalnutApp" PRIVATE
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/vendor/imgui>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/vendor/glfw/include>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/Walnut/src>
  $<$<CONFIG:Release>:C:/VulkanSDK/1.3.268.0/Include>
  $<$<CONFIG:Release>:D:/Projekty/WalnutProject/WalnutApp/../vendor/glm>
)
target_compile_definitions("WalnutApp" PRIVATE
  $<$<CONFIG:Release>:WL_PLATFORM_WINDOWS>
  $<$<CONFIG:Release>:WL_RELEASE>
)
target_link_directories("WalnutApp" PRIVATE
)
target_link_libraries("WalnutApp"
  $<$<CONFIG:Release>:Walnut>
)
target_compile_options("WalnutApp" PRIVATE
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("WalnutApp" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  add_dependencies("WalnutApp"
    "Walnut"
  )
  set_target_properties("WalnutApp" PROPERTIES
    OUTPUT_NAME "WalnutApp"
    ARCHIVE_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Dist-windows-x86_64/WalnutApp"
    LIBRARY_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Dist-windows-x86_64/WalnutApp"
    RUNTIME_OUTPUT_DIRECTORY "D:/Projekty/WalnutProject/bin/Dist-windows-x86_64/WalnutApp"
  )
endif()
target_include_directories("WalnutApp" PRIVATE
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/vendor/imgui>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/vendor/glfw/include>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/Walnut/src>
  $<$<CONFIG:Dist>:C:/VulkanSDK/1.3.268.0/Include>
  $<$<CONFIG:Dist>:D:/Projekty/WalnutProject/WalnutApp/../vendor/glm>
)
target_compile_definitions("WalnutApp" PRIVATE
  $<$<CONFIG:Dist>:WL_PLATFORM_WINDOWS>
  $<$<CONFIG:Dist>:WL_DIST>
)
target_link_directories("WalnutApp" PRIVATE
)
target_link_libraries("WalnutApp"
  $<$<CONFIG:Dist>:Walnut>
)
target_compile_options("WalnutApp" PRIVATE
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  set_target_properties("WalnutApp" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()