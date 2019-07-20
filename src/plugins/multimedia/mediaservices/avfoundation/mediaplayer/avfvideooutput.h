/***********************************************************************
*
* Copyright (c) 2012-2019 Barbara Geller
* Copyright (c) 2012-2019 Ansel Sermersheim
*
* Copyright (C) 2015 The Qt Company Ltd.
* Copyright (c) 2012-2016 Digia Plc and/or its subsidiary(-ies).
* Copyright (c) 2008-2012 Nokia Corporation and/or its subsidiary(-ies).
*
* This file is part of CopperSpice.
*
* CopperSpice is free software. You can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public License
* version 2.1 as published by the Free Software Foundation.
*
* CopperSpice is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* https://www.gnu.org/licenses/
*
***********************************************************************/

#ifndef AVFVIDEOOUTPUT_H
#define AVFVIDEOOUTPUT_H

#include <qobject.h>

class AVFVideoOutput
{
 public:
   virtual ~AVFVideoOutput() {}
   virtual void setLayer(void *playerLayer) = 0;
};

#define AVFVideoOutput_iid "com.copperspice.CS.AVFVideoOutput/1.0"
CS_DECLARE_INTERFACE(AVFVideoOutput, AVFVideoOutput_iid)

#endif
