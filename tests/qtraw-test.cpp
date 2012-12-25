/*
 * Copyright (C) 2012 Alberto Mardegan <info@mardy.it>
 *
 * This file is part of QtRaw.
 *
 * QtRaw is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * QtRaw is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with QtRaw.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "qtraw-test.h"

#include <QDebug>
#include <QImage>
#include <QImageReader>

void QtRawTest::initTestCase()
{
}

void QtRawTest::cleanupTestCase()
{
}

void QtRawTest::loadRaw()
{
    QImage raw("testimage.arw");
    QCOMPARE(raw.size(), QSize(4288, 2856));
}

void QtRawTest::loadRawWithReader()
{
    QImageReader reader("testimage.arw");
    QCOMPARE(reader.size(), QSize(4288, 2856));

    reader.setScaledSize(QSize(800,600));
    QImage raw = reader.read();
    QCOMPARE(raw.size(), QSize(800, 600));
}

QTEST_MAIN(QtRawTest)
