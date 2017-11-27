#include "companyservice.h"

CompanyService::CompanyService(int id, const QString &label, const QString &description, int category_id) :
    id(id),
    label(label),
    description(description),
    category_id(category_id)
{ }

int CompanyService::getId() const
{
    return id;
}

void CompanyService::setId(int value)
{
    id = value;
}

const QString& CompanyService::getLabel() const
{
    return label;
}

void CompanyService::setLabel(const QString &value)
{
    label = value;
}

const QString& CompanyService::getDescription() const
{
    return description;
}

void CompanyService::setDescription(const QString &value)
{
    description = value;
}

int CompanyService::getcategoryId() const
{
    return category_id;
}

void CompanyService::setcategoryId(int value)
{
    if(value >= 0)
        category_id = value;
}
