// gptserver.h
#ifndef GPTSERVER_H
#define GPTSERVER_H

#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>
#include <QHostAddress>
#include <QTimer>

class GptServer : public QObject
{
    Q_OBJECT
public:
    explicit GptServer(QObject *parent = nullptr);
    Q_INVOKABLE void startServer();

public slots:
    void sendToClient(const QString &message);
    void processClientMessage(const QString &message);

signals:
    void messageReceived(const QString &message);

private slots:
    void newConnection();
    void readyRead();

private:
    QTcpServer *tcpServer;
    QTcpSocket *clientSocket;
};

#endif // GPTSERVER_H
