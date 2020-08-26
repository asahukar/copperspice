list(APPEND MULTIMEDIA_PRIVATE_INCLUDES
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecodercontrol.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecoderservice.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecodersession.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecoderserviceplugin.h

   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreameravailabilitycontrol.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamermetadataprovider.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayerservice.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayerserviceplugin.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerstreamscontrol.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayercontrol.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayersession.h

   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstutils_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreameraudioprobecontrol_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamerbufferprobe_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamerbushelper_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamermessage_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideowidget_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideoinputdevicecontrol_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideoprobecontrol_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideorendererinterface_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideooverlay_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideowindow_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideorenderer_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstbufferpoolinterface_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideorendererplugin_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideorenderersink_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideobuffer_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qvideosurfacegstsink_p.h
   ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/gstvideoconnector_p.h
)

if(WITH_MULTIMEDIA AND GStreamer_FOUND)

   set(GSTREAMER_TOOLS_SOURCES
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstutils.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreameraudioprobecontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamerbufferprobe.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamerbushelper.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamermessage.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideowidget.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideoinputdevicecontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideoprobecontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideorendererinterface.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideooverlay.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideowindow.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstreamervideorenderer.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideobuffer.cpp
   )

   # plugin 1
   add_library(CsMultimedia_gst_audiodecoder MODULE "")
   add_library(CopperSpice::CsMultimedia_gst_audiodecoder ALIAS CsMultimedia_gst_audiodecoder)

   set_target_properties(CsMultimedia_gst_audiodecoder PROPERTIES OUTPUT_NAME CsMultimedia_gst_audiodecoder${BUILD_ABI} PREFIX "")

   target_sources(CsMultimedia_gst_audiodecoder
      PRIVATE
      ${GSTREAMER_TOOLS_SOURCES}
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecodercontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecoderservice.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecodersession.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/audiodecoder/qgstreameraudiodecoderserviceplugin.cpp
   )

   if (GSTREAMER_ABI_VERSION VERSION_EQUAL "0.10")

      target_sources(CsMultimedia_gst_audiodecoder
         PRIVATE
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qvideosurfacegstsink.cpp
      )

   else()
      target_sources(CsMultimedia_gst_audiodecoder
         PRIVATE
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideorendererplugin.cpp
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideorenderersink.cpp
      )

   endif()

   target_link_libraries(CsMultimedia_gst_audiodecoder
      CsCore
      CsGui
      CsNetwork
      CsMultimedia
      ${GSTREAMER_LIBRARIES}
      ${GSTREAMER_BASE_LIBRARIES}
      ${GSTREAMER_AUDIO_LIBRARIES}
      ${GSTREAMER_VIDEO_LIBRARIES}
      ${GSTREAMER_APP_LIBRARIES}
      ${GLIB2_LIBRARIES}
      ${GOBJECT2_LIBRARIES}
   )

   if (GSTREAMER_ABI_VERSION VERSION_EQUAL "0.10")
      target_link_libraries(CsMultimedia_gst_audiodecoder
         ${GSTREAMER_INTERFACES_LIBRARIES}
      )
   endif()

   target_include_directories(
      CsMultimedia_gst_audiodecoder
      PRIVATE
      ${GSTREAMER_INCLUDE_DIR}
      ${GLIB2_INCLUDES}
   )

   target_compile_definitions(CsMultimedia_gst_audiodecoder
      PRIVATE
      -DQT_PLUGIN
   )

   # plugin 2
   add_library(CsMultimedia_gst_mediaplayer MODULE "")
   add_library(CopperSpice::CsMultimedia_gst_mediaplayer ALIAS CsMultimedia_gst_mediaplayer)

   set_target_properties(CsMultimedia_gst_mediaplayer PROPERTIES OUTPUT_NAME CsMultimedia_gst_mediaplayer${BUILD_ABI} PREFIX "")

   target_sources(CsMultimedia_gst_mediaplayer
      PRIVATE
      ${GSTREAMER_TOOLS_SOURCES}
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayerservice.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerstreamscontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamermetadataprovider.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreameravailabilitycontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayerserviceplugin.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayercontrol.cpp
      ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/mediaplayer/qgstreamerplayersession.cpp
   )

   if (GSTREAMER_ABI_VERSION VERSION_EQUAL "0.10")

      target_sources(CsMultimedia_gst_mediaplayer
         PRIVATE
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qvideosurfacegstsink.cpp
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstbufferpoolinterface.cpp
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/gstvideoconnector.cpp
      )

   else()
      target_sources(CsMultimedia_gst_mediaplayer
         PRIVATE
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideorendererplugin.cpp
         ${CMAKE_SOURCE_DIR}/src/plugins/multimedia/mediaservices/gstreamer/tools/qgstvideorenderersink.cpp
      )
   endif()

   target_link_libraries(CsMultimedia_gst_mediaplayer
      CsCore
      CsGui
      CsNetwork
      CsMultimedia
      ${GSTREAMER_LIBRARIES}
      ${GSTREAMER_BASE_LIBRARIES}
      ${GSTREAMER_AUDIO_LIBRARIES}
      ${GSTREAMER_VIDEO_LIBRARIES}
      ${GSTREAMER_APP_LIBRARIES}
      ${GLIB2_LIBRARIES}
      ${GOBJECT2_LIBRARIES}
   )

   if (GSTREAMER_ABI_VERSION VERSION_EQUAL "0.10")
      target_link_libraries(CsMultimedia_gst_mediaplayer
         ${GSTREAMER_INTERFACES_LIBRARIES}
      )
   endif()

   target_include_directories(
      CsMultimedia_gst_mediaplayer
      PRIVATE
      ${GSTREAMER_INCLUDE_DIR}
      ${GLIB2_INCLUDES}
   )

   target_compile_definitions(CsMultimedia_gst_mediaplayer
      PRIVATE
      -DIN_TRUE
      -DQT_PLUGIN
   )

   set_target_properties(CsMultimedia_gst_audiodecoder PROPERTIES PREFIX "")
   set_target_properties(CsMultimedia_gst_mediaplayer  PROPERTIES PREFIX "")

   install(TARGETS CsMultimedia_gst_audiodecoder DESTINATION ${CMAKE_INSTALL_LIBDIR})
   install(TARGETS CsMultimedia_gst_mediaplayer  DESTINATION ${CMAKE_INSTALL_LIBDIR})
endif()
