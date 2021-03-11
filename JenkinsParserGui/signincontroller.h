#ifndef SIGNINCONTROLLER_H
#define SIGNINCONTROLLER_H

#include <QQuickItem>
#include "signinmodel.h"

class SignInController : public QObject
{
    Q_OBJECT
public:
    SignInController(QObject *parent = nullptr);
    bool signIn(SignInModel &user);
};

#endif // SIGNINCONTROLLER_H
