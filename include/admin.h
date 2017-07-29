#ifndef ADMIN_H
#define ADMIN_H

#include <QxOrm.h>

class Admin
{
public:
   long id;
   QString firstName;
   QString lastName;
   QDateTime birthDate;

   Admin() : id(0) { ; }
   virtual ~Admin() { ; }
};

typedef std::shared_ptr<Admin> adm_ptr;

QX_REGISTER_HPP(Admin, qx::trait::no_base_class_defined, 0)

#endif // ADMIN_H
