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

#ifndef VARIANTTABLEMODEL_P_H
#define VARIANTTABLEMODEL_P_H

#include <QAbstractTableModel>

class VariantTableModelPrivate;

class VariantTableModel : public QAbstractTableModel
{
    Q_OBJECT

public:
    explicit VariantTableModel(QObject *parent = 0);
    ~VariantTableModel();

    QVariant variant() const;
    void setVariant(const QVariant &variant);

    QVariant get(const QModelIndex &index) const;
    QVariant get(int row) const;

    void clear();

    int rowCount(const QModelIndex &parent) const;
    int columnCount(const QModelIndex &parent = QModelIndex()) const;

    QVariant data(const QModelIndex &index, int role) const;

private:
    VariantTableModel(VariantTableModelPrivate &dd, QObject *parent = 0);

    QScopedPointer<VariantTableModelPrivate> d_ptr;

    Q_DISABLE_COPY(VariantTableModel)
    Q_DECLARE_PRIVATE(VariantTableModel)

    Q_PRIVATE_SLOT(d_func(), void _q_onObjectPropertyChanged())
};

#endif // VARIANTTABLEMODEL_P_H
