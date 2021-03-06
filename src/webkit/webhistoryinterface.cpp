/*
 * Copyright (C) 2014 Stuart Howarth <showarth@marxoft.co.uk>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms and conditions of the GNU Lesser General Public License,
 * version 3, as published by the Free Software Foundation.
 *
 * This program is distributed in the hope it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
 * more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include "webhistoryinterface_p.h"
#include <QFile>
#include <QTextStream>
#include <QDeclarativeInfo>

WebHistoryInterface::WebHistoryInterface(QObject *parent) :
    QWebHistoryInterface(parent)
{
    QWebHistoryInterface::setDefaultInterface(this);
}

WebHistoryInterface::~WebHistoryInterface() {}

void WebHistoryInterface::addHistoryEntry(const QString &url) {
    m_urls.removeOne(url);
    m_urls.prepend(url);
    emit urlsChanged();
}

bool WebHistoryInterface::historyContains(const QString &url) const {
    return m_urls.contains(url);
}

QStringList WebHistoryInterface::urls() const {
    return m_urls;
}

int WebHistoryInterface::count() const {
    return m_urls.size();
}

QString WebHistoryInterface::storageFileName() const {
    return m_fileName;
}

void WebHistoryInterface::setStorageFileName(const QString &fileName) {
    if (fileName != this->storageFileName()) {
        m_fileName = fileName;
        emit storageFileNameChanged();
    }
}

bool WebHistoryInterface::save() {
    QFile file(this->storageFileName());

    if (file.open(QIODevice::WriteOnly | QIODevice::Truncate)) {
        QTextStream out(&file);

        for (int i = 0; i < m_urls.size(); i++) {
            out << m_urls.at(i) << "\n";
        }

        file.close();
        return true;
    }

    qmlInfo(this) << tr("Cannot save web history to %1: %2").arg(file.fileName()).arg(file.errorString());
}

bool WebHistoryInterface::load() {
    this->clear();
    QFile file(this->storageFileName());

    if (file.open(QIODevice::ReadOnly)) {
        QTextStream in(&file);
        QString line;

        while (!in.atEnd()) {
            line = in.readLine();

            if (!line.isNull()) {
                m_urls << line;
            }
        }

        file.close();
        emit urlsChanged();
        return true;
    }

    qmlInfo(this) << tr("Cannot load web history from %1: %2").arg(file.fileName()).arg(file.errorString());
}

void WebHistoryInterface::clear() {
    m_urls.clear();
    emit urlsChanged();
}
