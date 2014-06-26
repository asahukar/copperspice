/***********************************************************************
*
* Copyright (c) 2012-2014 Barbara Geller
* Copyright (c) 2012-2014 Ansel Sermersheim
* Copyright (c) 2012-2014 Digia Plc and/or its subsidiary(-ies).
* Copyright (c) 2008-2012 Nokia Corporation and/or its subsidiary(-ies).
* All rights reserved.
*
* This file is part of CopperSpice.
*
* CopperSpice is free software: you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public License
* version 2.1 as published by the Free Software Foundation.
*
* CopperSpice is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with CopperSpice.  If not, see
* <http://www.gnu.org/licenses/>.
*
***********************************************************************/

#ifndef QDistinctIterator_P_H
#define QDistinctIterator_P_H

#include <QList>
#include <qexpression_p.h>
#include <qitem_p.h>
#include <qatomiccomparator_p.h>
#include <qcomparisonplatform_p.h>
#include <qsourcelocationreflection_p.h>

QT_BEGIN_NAMESPACE

namespace QPatternist {

class DistinctIterator : public Item::Iterator
   , public ComparisonPlatform<DistinctIterator, false>
   , public SourceLocationReflection
{
 public:
   /**
    * Creates a DistinctIterator.
    * @param comp the AtomicComparator to be used for comparing values. This may be @c null,
    * meaning the IndexOfIterator iterator will dynamically determine what comparator to use
    * @param seq the sequence whose duplicates should be filtered out
    * @param context the usual context, used for error reporting and by AtomicComparators.
    * @param expression the Expression that this DistinctIterator is
    * evaluating for. It is used for error reporting, via
    * actualReflection().
    */
   DistinctIterator(const Item::Iterator::Ptr &seq,
                    const AtomicComparator::Ptr &comp,
                    const Expression::ConstPtr &expression,
                    const DynamicContext::Ptr &context);

   virtual Item next();
   virtual Item current() const;
   virtual xsInteger position() const;
   virtual Item::Iterator::Ptr copy() const;
   virtual const SourceLocationReflection *actualReflection() const;

   inline AtomicComparator::Operator operatorID() const {
      return AtomicComparator::OperatorEqual;
   }

 private:
   const Item::Iterator::Ptr   m_seq;
   const DynamicContext::Ptr   m_context;
   const Expression::ConstPtr  m_expr;
   Item                        m_current;
   xsInteger                   m_position;
   Item::List                  m_processed;
};
}

QT_END_NAMESPACE

#endif
