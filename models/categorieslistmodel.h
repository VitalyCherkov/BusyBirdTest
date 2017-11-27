#ifndef CATEGORIESLISTMODEL_H
#define CATEGORIESLISTMODEL_H

#include <QAbstractListModel>
#include <QVector>
#include "servicecategory.h"

class CategoriesListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum CategoriesListModelRoles {
        IdRole = Qt::UserRole + 1,
        LabelRole
    };

    CategoriesListModel(const QVector <ServiceCategory>& categories = QVector <ServiceCategory>(),
                         QObject* parent = Q_NULLPTR);

    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role) const;
    Q_INVOKABLE void addCategory(const ServiceCategory& newCategory);

protected:
    QHash <int, QByteArray> roleNames() const;

private:
    QVector <ServiceCategory> categories;
};

#endif // CATEGORIESLISTMODEL_H
