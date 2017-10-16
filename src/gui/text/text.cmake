set(GUI_PUBLIC_INCLUDES
    ${GUI_PUBLIC_INCLUDES}
    QAbstractTextDocumentLayout
    QAbstractGraphicsShapeItem
    QAbstractUndoItem
    QFont
    QFontDatabase
    QFontInfo
    QFontMetrics
    QFontMetricsF
    QGlyphRun
    QRawFont
    QPlatformFontDatabase
    QStaticText
    QSupportedWritingSystems
    QSyntaxHighlighter
    QTextCursor
    QTextBlock
    QTextBlockFormat
    QTextBlockGroup
    QTextBlockUserData
    QTextCharFormat
    QTextDocument
    QTextDocumentFragment
    QTextDocumentWriter
    QTextFormat
    QTextFragment
    QTextFrame
    QTextFrameFormat
    QTextFrameLayoutData
    QTextInlineObject
    QTextImageFormat
    QTextLayout
    QTextLine
    QTextListFormat
    QTextLength
    QTextList
    QTextObject
    QTextObjectInterface
    QTextOption
    QTextTable
    QTextTableCell
    QTextTableCellFormat
    QTextTableFormat
)

set(GUI_INCLUDES
    ${GUI_INCLUDES}
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qabstractgraphicsshapeitem.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qabstracttextdocumentlayout.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qabstractundoitem.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfont.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontdatabase.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontinfo.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontmetrics.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontmetricsf.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qglyphrun.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qplatformfontdatabase.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qplatformfontdatabase_qpa.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qrawfont.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qstatictext.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qsupportedwritingsystems.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qsyntaxhighlighter.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextblock.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextblockformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextblockgroup.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextblockuserdata.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcharformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcursor.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocument.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentfragment.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentwriter.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextfragment.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextframe.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextframeformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextframelayoutdata.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextinlineobject.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextimageformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextlayout.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextline.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextlistformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextlength.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextlist.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextobject.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextobjectinterface.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextoption.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexttable.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexttablecell.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexttablecellformat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexttableformat.h
)

set(GUI_PRIVATE_INCLUDES
    ${GUI_PRIVATE_INCLUDES}
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qabstracttextdocumentlayout_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qcssparser_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfont_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontdatabase_mac.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_coretext_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_mac_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_win_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_x11_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_ft_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengineglyphcache_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontsubset_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfragmentmap_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qglyphrun_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qrawfont_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qstatictext_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcontrol_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcontrol_p_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcursor_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocument_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentfragment_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentlayout_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextengine_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextengine_mac.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextformat_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexthtmlparser_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextimagehandler_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextobject_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextodfwriter_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexttable_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qzipreader_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qzipwriter_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontdatabase_x11.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontdatabase_win.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontenginedirectwrite_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qcssscanner.cpp
)

set(GUI_SOURCES
    ${GUI_SOURCES}
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfont.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontsubset.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontmetrics.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontdatabase.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcontrol.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextengine.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextlayout.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextformat.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextobject.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextoption.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocument.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocument_p.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexthtmlparser.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qabstracttextdocumentlayout.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentlayout.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextcursor.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentfragment.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextimagehandler.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtexttable.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextlist.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextdocumentwriter.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qsyntaxhighlighter.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qcssparser.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qzip.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qtextodfwriter.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qstatictext.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qrawfont.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/text/qglyphrun.cpp
)

if(X11_FOUND)
    set(GUI_SOURCES
        ${GUI_SOURCES}
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfont_x11.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_x11.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_ft.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qrawfont_ft.cpp
    )
endif()

if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    set(GUI_SOURCES
        ${GUI_SOURCES}
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfont_win.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_win.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontenginedirectwrite.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qrawfont_win.cpp
    )

# FIXME: check for COCOA instead?
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    set(GUI_SOURCES
        ${GUI_SOURCES}
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfont_mac.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qrawfont_mac.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_mac.mm
        ${CMAKE_CURRENT_SOURCE_DIR}/text/qfontengine_coretext.mm
    )
endif()

# missing a bunch of files from 3rdparty/freetype, not sure

