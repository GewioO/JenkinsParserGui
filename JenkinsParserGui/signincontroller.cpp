#include "signincontroller.h"

SignInController::SignInController(QObject *parent): QObject(parent)
{
}

bool SignInController::signIn(SignInModel &user)
{
    qDebug() << "Try to sign in with username " << user.getUsername();
    bool result = false;
    //TODO: implement singing in
    user.setSignedIn(result);
    return result;
}
