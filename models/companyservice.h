#ifndef COMPANYSERVICE_H
#define COMPANYSERVICE_H

#include <QMetaType>
#include <QString>

class CompanyService
{
public:
    CompanyService(int id = -1, const QString& label = "", const QString& description = "", int category_id = -1);

    int getId() const;
    void setId(int value);

    const QString& getLabel() const;
    void setLabel(const QString &value);

    const QString& getDescription() const;
    void setDescription(const QString &value);

    int getcategoryId() const;
    void setcategoryId(int value);

private:
    int id;
    QString label;
    QString description;
    int category_id;
};

Q_DECLARE_METATYPE(CompanyService)

#endif // COMPANYSERVICE_H
