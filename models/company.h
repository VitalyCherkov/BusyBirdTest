#ifndef COMPANY_H
#define COMPANY_H

#include <QMetaType>
#include <QVector>
#include <QString>
#include "legalinformation.h"
#include "companyservice.h"

class Company
{
public:
    Company();
private:
    int id;
    QString label;
    QString adress;
    QString description;
    QString time_description;
    QString logo_gath;
    LegalInformation legal_information;
    QVector <CompanyService> services;
    float rateing;
};

Q_DECLARE_METATYPE(Company)

#endif // COMPANY_H
