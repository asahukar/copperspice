set(MULTIMEDIA_PUBLIC_INCLUDES
    ${MULTIMEDIA_PUBLIC_INCLUDES}
    QAudio
    QAudioFormat
    QAudioInput
    QAudioOutput
    QAudioDeviceInfo
    QAudioEngineFactoryInterface
    QAbstractAudioDeviceInfo
    QAbstractAudioInput
    QAbstractAudioOutput
)

set(MULTIMEDIA_INCLUDES
    ${MULTIMEDIA_INCLUDES}
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qabstractaudiodeviceinfo.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qabstractaudioinput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qabstractaudiooutput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudio.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudioformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudioinput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiooutput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiodeviceinfo.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudioenginefactoryinterface.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiosystem.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiosystemplugin.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsound.h
    ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsoundeffect.h
)

set(MULTIMEDIA_PRIVATE_INCLUDES
   ${MULTIMEDIA_PRIVATE_INCLUDES}
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiodevicefactory_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsamplecache_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsoundeffect_qaudio_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qwavedecoder_p.h
)

set(MULTIMEDIA_SOURCES
   ${MULTIMEDIA_SOURCES}
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudio.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiodevicefactory.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiodeviceinfo.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiosystem.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiosystemplugin.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudioformat.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudioinput.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qaudiooutput.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsamplecache_p.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsound.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsoundeffect.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qsoundeffect_qaudio_p.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/audio/qwavedecoder_p.cpp
)

if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    set(EXTRA_MULTIMEDIA_LIBS
        ${EXTRA_MULTIMEDIA_LIBS}
        winmm
    )
endif()

if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    set(EXTRA_MULTIMEDIA_LDFLAGS
      ${EXTRA_MULTIMEDIA_LDFLAGS}
      -framework AudioUnit -framework CoreAudio -framework AudioToolbox
    )
endif()
