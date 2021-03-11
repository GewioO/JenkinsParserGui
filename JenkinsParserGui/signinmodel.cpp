#include "signinmodel.h"

SignInModel::SignInModel(QObject *parent): QObject(parent)
{
}

bool SignInModel::isSignedIn() const
{
    return this->m_signedIn;
}

void SignInModel::setSignedIn(bool isSignedIn)
{
    if (this->m_signedIn != isSignedIn) {
        this->m_signedIn = isSignedIn;
        emit signedInChanged();
    }
}

QString SignInModel::getUsername() const
{
    return this->m_username;
}

void SignInModel::setUsername(const QString &username)
{
    if (this->m_username != username) {
        this->m_username = username;
        emit usernameChanged();
    }
}
