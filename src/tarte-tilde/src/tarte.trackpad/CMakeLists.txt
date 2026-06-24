include(${CMAKE_CURRENT_SOURCE_DIR}/../../../min-api/max-sdk-base/script/max-pretarget.cmake)

#############################################################
# MAX EXTERNAL
#############################################################

include_directories( 
	"${MAX_SDK_INCLUDES}"
	"${MAX_SDK_MSP_INCLUDES}"
	"${MAX_SDK_JIT_INCLUDES}"
)

set(PROJECT_SRC
     "tarte.trackpad.c"
)
add_library( 
	${PROJECT_NAME} 
	MODULE
	${PROJECT_SRC}
)



if(APPLE)
target_link_libraries(${PROJECT_NAME}
    PRIVATE
    "-framework CoreFoundation"
    "-framework CoreGraphics"
	"-framework IOKit"
)

# Empty sign to keep max happy on my computer
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND codesign --force --deep --sign - $<TARGET_FILE:${PROJECT_NAME}>
)
endif()

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../min-api/max-sdk-base/script/max-posttarget.cmake)
