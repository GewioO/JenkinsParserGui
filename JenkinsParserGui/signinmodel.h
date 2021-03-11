#ifndef SIGNINMODEL_H
#define SIGNINMODEL_H

#include <QObject>

class SignInModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool signedIn READ isSignedIn WRITE setSignedIn NOTIFY signedInChanged)
    Q_PROPERTY(QString username READ getUsername WRITE setUsername NOTIFY usernameChanged)
public:
    SignInModel(QObject *parent = nullptr);

    bool isSignedIn() const;
    void setSignedIn(bool isSignedIn);

    QString getUsername() const;
    void setUsername(const QString &username);

signals:
    void signedInChanged();
    void usernameChanged();
private:
    bool m_signedIn;
    QString m_username;
};

#endif // SIGNINMODEL_H
