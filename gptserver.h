#ifndef GPTSERVER_H
#define GPTSERVER_H

#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>
#include <qfile.h>

class GptServer : public QObject
{
    Q_OBJECT
public:
    explicit GptServer(QObject *parent = nullptr);
    Q_INVOKABLE void startServer();
    Q_INVOKABLE void sendToClient(const QString &message);
    Q_INVOKABLE void sendPhoto(const QString &photoPath);

signals:
    void messageReceived(const QString &message);

public slots:
    void newConnection();
    void readyRead();
    void processClientMessage(const QString &message);

private:
    QTcpServer *tcpServer;
    QTcpSocket *clientSocket;
    QString m_message;
};

#endif // GPTSERVER_H
