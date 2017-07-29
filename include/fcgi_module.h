#ifndef FCGI_MODULE_H
#define FCGI_MODULE_H

#include <iostream>
#include <QCoreApplication>
#include <QHostAddress>
#include <QTimer>

#include <signal.h>
#include <qfcgi.h>
#include <include/admin.h>

class QFCgiApp : public QCoreApplication {
  Q_OBJECT

public:
  QFCgiApp(int argc, char *argv[]);
  typedef std::vector<adm_ptr> type_lst_adm;

private slots:
  void onNewRequest(QFCgiRequest *request);

private:
  QFCgi *fcgi;
  type_lst_adm lst_admget;
};

static void quit_handler(int signal) {
  qApp->quit();
}

#endif // FCGI_MODULE_H
