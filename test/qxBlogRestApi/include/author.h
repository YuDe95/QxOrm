#ifndef _QX_BLOG_AUTHOR_H_
#define _QX_BLOG_AUTHOR_H_

class blog;

class QX_BLOG_DLL_EXPORT author : public qx::IxPersistable
{

   QX_PERSISTABLE_HPP(author)

public:

// -- typedef
   typedef std::shared_ptr<blog> blog_ptr;
   typedef std::vector<blog_ptr> list_blog;

// -- enum
   enum enum_sex { male, female, unknown };

// -- properties
   QString     m_id;
   QString     m_name;
   QDate       m_birthdate;
   enum_sex    m_sex;
   list_blog   m_blogX;

// -- contructor, virtual destructor
#ifdef _QX_TEST_WITH_MONGODB
   author() : qx::IxPersistable(), m_sex(unknown) { ; }
#else // _QX_TEST_WITH_MONGODB
   author() : qx::IxPersistable(), m_id("0"), m_sex(unknown) { ; }
#endif // _QX_TEST_WITH_MONGODB
   virtual ~author() { ; }

// -- methods
   int age() const;

};

QX_REGISTER_PRIMARY_KEY(author, QString)
QX_REGISTER_HPP_QX_BLOG(author, qx::trait::no_base_class_defined, 0)

typedef std::shared_ptr<author> author_ptr;
typedef qx::QxCollection<QString, author_ptr> list_author;

#endif // _QX_BLOG_AUTHOR_H_
